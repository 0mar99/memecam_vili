.class public Lcom/android/camera/module/video/VideoConfig;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/VideoConfig$VideoEncoder;
    }
.end annotation


# static fields
.field public static final EXPOSURE_TIME_FOR_SLOW_SHUTTER:J = 0x7735940L

.field public static final HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_DURATION_4K:I = 0x75300

.field public static final MAX_DURATION_4K_HDR10P:I = 0x57e40

.field public static final MAX_DURATION_4K_SUPER_NIGHT:I = 0x493e0

.field public static final MAX_DURATION_8K:I = 0x57e40

.field public static final RESET_VIDEO_AUTO_FOCUS_TIME:I = 0xbb8

.field public static final SIZE_1080:Landroid/util/Size;

.field public static final SIZE_2160:Landroid/util/Size;

.field public static final SIZE_720:Landroid/util/Size;

.field public static final TAG:Ljava/lang/String; = "VideoConfig"

.field public static final TRUE_COLOUR_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_HFR_FRAME_RATE_120:I = 0x78

.field public static final VIDEO_HFR_FRAME_RATE_240:I = 0xf0

.field public static final VIDEO_HFR_FRAME_RATE_480:I = 0x1e0

.field public static final VIDEO_HFR_FRAME_RATE_960:I = 0x3c0

.field public static final VIDEO_MAX_SINGLE_FILE_SIZE:J = 0xdac00000L

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field public static final VIDEO_NORMAL_FRAME_RATE:I = 0x1e


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0xc800000

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/video/VideoConfig;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 2
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_720:Landroid/util/Size;

    .line 3
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_1080:Landroid/util/Size;

    .line 4
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_2160:Landroid/util/Size;

    .line 5
    new-instance v0, Lcom/android/camera/module/video/VideoConfig$1;

    invoke-direct {v0}, Lcom/android/camera/module/video/VideoConfig$1;-><init>()V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/android/camera/module/video/VideoConfig$2;

    invoke-direct {v0}, Lcom/android/camera/module/video/VideoConfig$2;-><init>()V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->TRUE_COLOUR_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/module/video/VideoConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEVC: no pre-defined bitrate for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    return p0
.end method

.method public static getTrueColourVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/camera/module/video/VideoConfig;->TRUE_COLOUR_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/module/video/VideoConfig;->TRUE_COLOUR_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/module/video/VideoConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRUECOLOUR: no pre-defined bitrate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    return p0
.end method
