.class public Lcom/android/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifInterface$GpsDifferential;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsTrackRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsSpeedRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsMeasureMode;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsStatus;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$SubjectDistance;,
        Lcom/android/gallery3d/exif/ExifInterface$Sharpness;,
        Lcom/android/gallery3d/exif/ExifInterface$Saturation;,
        Lcom/android/gallery3d/exif/ExifInterface$Contrast;,
        Lcom/android/gallery3d/exif/ExifInterface$GainControl;,
        Lcom/android/gallery3d/exif/ExifInterface$SceneType;,
        Lcom/android/gallery3d/exif/ExifInterface$FileSource;,
        Lcom/android/gallery3d/exif/ExifInterface$SensingMethod;,
        Lcom/android/gallery3d/exif/ExifInterface$LightSource;,
        Lcom/android/gallery3d/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/android/gallery3d/exif/ExifInterface$SceneCapture;,
        Lcom/android/gallery3d/exif/ExifInterface$WhiteBalance;,
        Lcom/android/gallery3d/exif/ExifInterface$ExposureMode;,
        Lcom/android/gallery3d/exif/ExifInterface$ColorSpace;,
        Lcom/android/gallery3d/exif/ExifInterface$Flash;,
        Lcom/android/gallery3d/exif/ExifInterface$MeteringMode;,
        Lcom/android/gallery3d/exif/ExifInterface$ExposureProgram;,
        Lcom/android/gallery3d/exif/ExifInterface$PlanarConfiguration;,
        Lcom/android/gallery3d/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/android/gallery3d/exif/ExifInterface$ResolutionUnit;,
        Lcom/android/gallery3d/exif/ExifInterface$Compression;,
        Lcom/android/gallery3d/exif/ExifInterface$YCbCrPositioning;,
        Lcom/android/gallery3d/exif/ExifInterface$ExifOrientationFlag;
    }
.end annotation


# static fields
.field public static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field public static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field public static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_AI_TYPE:I

.field public static final TAG_ALGORITHM_COMMENT:I

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I

.field public static final TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I

.field public static final TAG_DEPTH_MAP_TIME_WATER_MARK:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_FRONT_MIRROR:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_OFFSET_TIME_ORIGINAL:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PORTRAIT_LIGHTING_PATTERN:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_XIAOMI_ALGO_COMMENT:I

.field public static final TAG_XIAOMI_COMMENT:I

.field public static final TAG_XIAOMI_DEPTHMAP_VERSION:I

.field public static final TAG_XIAOMI_DOC_PHOTO:I

.field public static final TAG_XIAOMI_LIVESHOT_PHOTO:I

.field public static final TAG_XIAOMI_MODE:I

.field public static final TAG_XIAOMI_PRODUCT:I

.field public static final TAG_XIAOMI_SIQE:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field public static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mData:Lcom/android/gallery3d/exif/ExifData;

.field public final mDateTimeStampFormat:Ljava/text/DateFormat;

.field public final mGPSDateStampFormat:Ljava/text/DateFormat;

.field public final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field public mMimeType:I

.field public mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 1
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 2
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 3
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 4
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 5
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 6
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 7
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 8
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 9
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v1, 0x112

    .line 10
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v1, 0x115

    .line 11
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v1, 0x116

    .line 12
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v1, 0x117

    .line 13
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v1, 0x11a

    .line 14
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v1, 0x11b

    .line 15
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v1, 0x11c

    .line 16
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v1, 0x128

    .line 17
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v1, 0x12d

    .line 18
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v1, 0x131

    .line 19
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v1, 0x132

    .line 20
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v1, 0x13b

    .line 21
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v1, 0x13e

    .line 22
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v1, 0x13f

    .line 23
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v1, 0x211

    .line 24
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v1, 0x212

    .line 25
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v1, 0x213

    .line 26
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v1, 0x214

    .line 27
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v1, -0x7d68

    .line 28
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v1, -0x7897

    .line 29
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v1, -0x77db

    .line 30
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    const/4 v1, 0x1

    const/16 v2, 0x201

    .line 31
    invoke-static {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v2, 0x202

    .line 32
    invoke-static {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v2, 0x2

    const/16 v3, -0x7d66

    .line 33
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v3, -0x7d63

    .line 34
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v3, -0x77de

    .line 35
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v3, -0x77dc

    .line 36
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v3, -0x77d9

    .line 37
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v3, -0x77d8

    .line 38
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    const/16 v3, -0x7000

    .line 39
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v3, -0x6ffd

    .line 40
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v3, -0x6ffc

    .line 41
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v3, -0x6fef

    .line 42
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    const/16 v3, -0x6eff

    .line 43
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v3, -0x6efe

    .line 44
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v3, -0x6dff

    .line 45
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v3, -0x6dfe

    .line 46
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v3, -0x6dfd

    .line 47
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v3, -0x6dfc

    .line 48
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v3, -0x6dfb

    .line 49
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v3, -0x6dfa

    .line 50
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v3, -0x6df9

    .line 51
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v3, -0x6df8

    .line 52
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v3, -0x6df7

    .line 53
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/16 v3, -0x6df6

    .line 54
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v3, -0x6dec

    .line 55
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v3, -0x6d84

    .line 56
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v3, -0x6d7a

    .line 57
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v3, -0x6d70

    .line 58
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v3, -0x6d6f

    .line 59
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v3, -0x6d6e

    .line 60
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v3, -0x6000

    .line 61
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v3, -0x5fff

    .line 62
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v3, -0x5ffe

    .line 63
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v3, -0x5ffd

    .line 64
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v3, -0x5ffc

    .line 65
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v3, -0x5ffb

    .line 66
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v3, -0x5df5

    .line 67
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v3, -0x5df4

    .line 68
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v3, -0x5df2

    .line 69
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v3, -0x5df1

    .line 70
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v3, -0x5df0

    .line 71
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v3, -0x5dec

    .line 72
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v3, -0x5deb

    .line 73
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v3, -0x5de9

    .line 74
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v3, -0x5d00

    .line 75
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v3, -0x5cff

    .line 76
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v3, -0x5cfe

    .line 77
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v3, -0x5bff

    .line 78
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v3, -0x5bfe

    .line 79
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v3, -0x5bfd

    .line 80
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v3, -0x5bfc

    .line 81
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v3, -0x5bfb

    .line 82
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v3, -0x5bfa

    .line 83
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v3, -0x5bf9

    .line 84
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v3, -0x5bf8

    .line 85
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v3, -0x5bf7

    .line 86
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v3, -0x5bf6

    .line 87
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v3, -0x5bf5

    .line 88
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v3, -0x5bf4

    .line 89
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v3, -0x5be0

    .line 90
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/16 v3, -0x7777

    .line 91
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    const/16 v3, -0x7770

    .line 92
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v3, -0x776f

    .line 93
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    const/16 v3, -0x776e

    .line 94
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    const/16 v3, -0x776d

    .line 95
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    const/16 v3, -0x776c

    .line 96
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PORTRAIT_LIGHTING_PATTERN:I

    const/16 v3, -0x776b

    .line 97
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_AI_TYPE:I

    const/16 v3, -0x776a

    .line 98
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FRONT_MIRROR:I

    const/16 v3, -0x7769

    .line 99
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_LIVESHOT_PHOTO:I

    const/16 v3, -0x7768

    .line 100
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DEPTHMAP_VERSION:I

    const/16 v3, -0x7767

    .line 101
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DOC_PHOTO:I

    const/16 v3, -0x7766

    .line 102
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_SIQE:I

    const/16 v3, -0x6667

    .line 103
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    const/16 v3, -0x6600

    .line 104
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_PRODUCT:I

    const/16 v3, -0x6556

    .line 105
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_ALGO_COMMENT:I

    const/16 v3, -0x599f

    .line 106
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_MODE:I

    const/4 v3, 0x4

    .line 107
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 108
    invoke-static {v3, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 109
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v0, 0x3

    .line 110
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 111
    invoke-static {v3, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v2, 0x5

    .line 112
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v2, 0x6

    .line 113
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v2, 0x7

    .line 114
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v2, 0x8

    .line 115
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v2, 0x9

    .line 116
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v2, 0xa

    .line 117
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v2, 0xb

    .line 118
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v2, 0xc

    .line 119
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v2, 0xd

    .line 120
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v2, 0xe

    .line 121
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v2, 0xf

    .line 122
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v2, 0x10

    .line 123
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v2, 0x11

    .line 124
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v2, 0x12

    .line 125
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v2, 0x13

    .line 126
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v2, 0x14

    .line 127
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v2, 0x15

    .line 128
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v2, 0x16

    .line 129
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v2, 0x17

    .line 130
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v2, 0x18

    .line 131
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v2, 0x19

    .line 132
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v2, 0x1a

    .line 133
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v2, 0x1b

    .line 134
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v2, 0x1c

    .line 135
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v2, 0x1d

    .line 136
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v2, 0x1e

    .line 137
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 138
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 140
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 146
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mMimeType:I

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v0, "UTC"

    .line 6
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 8
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private addExifTag(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public static addXiaomiComment([BLjava/lang/String;)[B
    .locals 5

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 6
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 7
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    .line 8
    invoke-virtual {v3, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    const-class v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_0
    sget-object p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addXiaomiComment cost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 3
    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    const-string p0, "S"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    neg-double p0, v0

    return-wide p0

    .line 5
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x400

    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2
    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static getAllowedIfdsFromInfo(I)[I
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    shr-int v4, p0, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 4
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 8
    aput v1, p0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static getExif([B)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getExifOrientationValue(I)S
    .locals 1

    .line 1
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method public static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 3
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 4
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getImageHeight(Lcom/android/gallery3d/exif/ExifInterface;)I
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getImageWidth(Lcom/android/gallery3d/exif/ExifInterface;)I
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0

    return p0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method public static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1
    fill-array-data v2, :array_0

    .line 2
    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 3
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    or-int/lit8 v7, v6, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v8, 0x40000

    or-int v9, v2, v8

    or-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v11, 0x30000

    or-int v12, v2, v11

    or-int/lit8 v13, v12, 0x3

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v13, v12, 0x1

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v14, v12, 0x2

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v14, 0x50000

    or-int/2addr v2, v14

    or-int/lit8 v15, v2, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/4 v13, 0x0

    or-int/2addr v9, v13

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v9, v12, 0x300

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v9, v2, 0x2

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v9, v2, 0x6

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v12, 0x3

    or-int/2addr v2, v12

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v4, v6, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v13

    .line 34
    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 35
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v8

    or-int/2addr v3, v2

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v3, v2, [I

    aput v1, v3, v13

    .line 37
    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 38
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v7, 0x70000

    or-int v9, v3, v7

    or-int/lit8 v10, v9, 0x4

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v15, v3, v11

    or-int/lit8 v12, v15, 0x1

    invoke-virtual {v4, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v10, v3, v14

    or-int/2addr v10, v2

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v8, v3

    or-int/2addr v8, v2

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int/lit8 v11, v9, 0x0

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v16, v3, v5

    or-int/lit8 v7, v16, 0xd

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v7, v16, 0x14

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    or-int/lit8 v14, v16, 0x7

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int/lit8 v7, v16, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v14, v16, 0x21

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v4, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int/lit8 v14, v15, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v16, 0xa0000

    or-int v16, v3, v16

    or-int/lit8 v5, v16, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v15

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v5, v9, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    or-int/lit8 v6, v3, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PORTRAIT_LIGHTING_PATTERN:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_AI_TYPE:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FRONT_MIRROR:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_LIVESHOT_PHOTO:I

    or-int/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DEPTHMAP_VERSION:I

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DOC_PHOTO:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_PRODUCT:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_MODE:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_ALGO_COMMENT:I

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_SIQE:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v13

    .line 112
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 113
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    or-int/2addr v5, v1

    or-int/lit8 v6, v5, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v6, 0x20000

    or-int v7, v1, v6

    or-int/lit8 v6, v7, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v8, 0x50000

    or-int/2addr v8, v1

    or-int/lit8 v9, v8, 0x3

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int/lit8 v5, v8, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int/lit8 v8, v7, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v5, 0x70000

    or-int/2addr v5, v1

    or-int/2addr v5, v13

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v5, v7, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v5, 0x30000

    or-int/2addr v1, v5

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v2, 0x3

    aput v2, v1, v13

    .line 142
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 143
    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    or-int/2addr v1, v13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static isIfdAllowed(II)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isOffsetTag(S)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/gallery3d/exif/Rational;

    .line 2
    new-instance v2, Lcom/android/gallery3d/exif/Rational;

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    new-instance v0, Lcom/android/gallery3d/exif/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/android/gallery3d/exif/Rational;

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 p0, 0x2

    aput-object v0, p1, p0

    return-object p1
.end method


# virtual methods
.method public addAiType(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_AI_TYPE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAlgorithmComment(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAlgorithmComment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 2

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    iget-object p4, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addDepthMapBlurLevel(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDepthMapFocusPoint(Landroid/graphics/Point;)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDulCameraWaterMark([B)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addFileTypeLiveShot(Z)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_LIVESHOT_PHOTO:I

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addFrontMirror(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FRONT_MIRROR:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/android/gallery3d/exif/Rational;

    new-instance v0, Lcom/android/gallery3d/exif/Rational;

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/gallery3d/exif/Rational;

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    new-instance v3, Lcom/android/gallery3d/exif/Rational;

    iget-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 7
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v3, p2, v0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    return v2
.end method

.method public addGpsTags(DD)Z
    .locals 5

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 3
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    if-ltz p1, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    .line 4
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double p3, p3, v3

    if-ltz p3, :cond_1

    const-string p3, "E"

    goto :goto_1

    :cond_1
    const-string p3, "W"

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public addPortraitLighting(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PORTRAIT_LIGHTING_PATTERN:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addSiqeType(B)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_SIQE:I

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addSubTagSecTime(IJLjava/util/TimeZone;)Z
    .locals 2

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p3

    .line 3
    invoke-static {p2, p3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    const-string p3, "SSS"

    .line 4
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addTimeWaterMark([B)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addXiaomiComment(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addXiaomiDepthmapVersion(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DEPTHMAP_VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addXiaomiDocPhotoVersion(B)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addXiaomiDocPhotoVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_DOC_PHOTO:I

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addXiaomiMode(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addXiaomiMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_MODE:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addXiaomiProduct(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_PRODUCT:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addXpComment([B)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_ALGO_COMMENT:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 3
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 4
    invoke-static {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 5
    :cond_2
    new-instance p0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .line 7
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 3
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 4
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 5
    new-instance p0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    return-object p0
.end method

.method public clearExif()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public getActualTagCount(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result p0

    return p0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDefinedTagCount(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p0

    return p0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result p0

    return p0
.end method

.method public getDefinedTagType(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result p0

    return p0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mMimeType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    const-string v0, "HEIC does not support exif mutation"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/gallery3d/exif/ExifInterface;)V

    .line 4
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    throw p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLatLongAsDoubles()[D
    .locals 5

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v0

    .line 2
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    .line 4
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 5
    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    array-length v3, v2

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v0

    aput-wide v0, v3, v4

    const/4 v0, 0x1

    .line 7
    invoke-static {v2, p0}, Lcom/android/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v1

    aput-wide v1, v3, v0

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMimeType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mMimeType:I

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "please call #readExif first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTag(I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTag(II)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifData;->getTag(SI)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagByteValues(I)[B
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValues(II)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getTagDefinition(SI)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {p2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public getTagDefinitionForTag(Lcom/android/gallery3d/exif/ExifTag;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result p0

    return p0
.end method

.method public getTagDefinitionForTag(SSII)I
    .locals 11

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, p1, v3

    .line 8
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 9
    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v6

    .line 10
    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v7

    .line 11
    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v5

    .line 12
    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_2

    aget v10, v5, v9

    if-ne v10, p4, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    if-ne p2, v6, :cond_4

    if-eq p3, v7, :cond_3

    if-nez v7, :cond_4

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method public getTagDefinitionsForTagId(S)[I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v1, v1, [I

    .line 3
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v0, v4

    .line 5
    invoke-static {v6, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v6

    .line 6
    invoke-virtual {p0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 7
    aput v6, v1, v5

    move v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_2
    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagIntValues(I)[I
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p0

    return-object p0
.end method

.method public getTagIntValues(II)[I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagLongValues(I)[J
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValues(II)[J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValue(I)Lcom/android/gallery3d/exif/Rational;
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValue(II)Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValue(II)Lcom/android/gallery3d/exif/Rational;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/android/gallery3d/exif/Rational;

    const/4 p2, 0x0

    aget-object p0, p0, p2

    invoke-direct {p1, p0}, Lcom/android/gallery3d/exif/Rational;-><init>(Lcom/android/gallery3d/exif/Rational;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXiaomiComment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getXiaomiComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasThumbnail()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result p0

    return p0
.end method

.method public isTagCountDefined(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public isThumbnailCompressed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result p0

    return p0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1388

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifHelper;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mMimeType:I

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 4
    new-instance p1, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->extractExifFromHeif(Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;)[B

    move-result-object p1

    .line 6
    new-instance v0, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/exif/ExifReader;-><init>(Lcom/android/gallery3d/exif/ExifInterface;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/exif/ExifReader;-><init>(Lcom/android/gallery3d/exif/ExifInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    return-void

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 11
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 15
    throw p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result p0

    return p0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 2
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p0, 0x1

    return p0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->clearExif()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 8

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/android/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-static {p2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 6
    array-length v3, p5

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_4

    aget v7, p5, v5

    if-ne p2, v7, :cond_2

    const/4 v6, 0x1

    .line 7
    :cond_2
    invoke-static {v7}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v7

    if-nez v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return v1

    .line 8
    :cond_5
    invoke-static {p5}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result p2

    if-eqz p1, :cond_7

    .line 9
    array-length p5, p1

    :goto_1
    if-ge v4, p5, :cond_7

    aget v3, p1, v4

    .line 10
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 11
    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    shl-int/lit8 p1, p2, 0x18

    shl-int/lit8 p2, p3, 0x10

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return v0

    :cond_8
    return v1
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateBasicInfo(III)Z
    .locals 1

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    .line 6
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 21
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x5a

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 24
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 25
    throw p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 11
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 31
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 32
    throw p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 37
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 38
    throw p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 2
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 p0, 0x0

    .line 14
    array-length p2, p1

    invoke-virtual {v0, p1, p0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 17
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 18
    throw p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
