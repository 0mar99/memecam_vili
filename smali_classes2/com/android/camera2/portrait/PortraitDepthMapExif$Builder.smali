.class public Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
.super Ljava/lang/Object;
.source "PortraitDepthMapExif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/portrait/PortraitDepthMapExif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public algorithmName:Ljava/lang/String;

.field public cameraPreferredMode:I

.field public coordinatesOfOfTheRegionUnderWatermarks:[I

.field public depthLength:I

.field public dulCameraWaterMarkLocation:[I

.field public dulWaterMark:[B

.field public isBokehFrontCamera:Z

.field public isCinematicAspectRatio:Z

.field public isFrontMirror:Z

.field public isLTR:Z

.field public isSupportZeroDegreeOrientationImage:Z

.field public jpeg:[B

.field public jpegDataOfTheRegionUnderWatermarks:[B

.field public lightingPattern:I

.field public pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public portraitLightingVersioin:I

.field public rawLength:I

.field public rotation:I

.field public timeStamp:J

.field public timeWaterMark:[B

.field public timeWaterMarkLocation:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->jpeg:[B

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->dulWaterMark:[B

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isBokehFrontCamera:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isCinematicAspectRatio:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->rawLength:I

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->depthLength:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeStamp:J

    return-wide v0
.end method

.method public static synthetic access$1600(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->portraitLightingVersioin:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isSupportZeroDegreeOrientationImage:Z

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->cameraPreferredMode:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isLTR:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->dulCameraWaterMarkLocation:[I

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeWaterMark:[B

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeWaterMarkLocation:[I

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->rotation:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->lightingPattern:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isFrontMirror:Z

    return p0
.end method


# virtual methods
.method public algorithmName(Ljava/lang/String;)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/android/camera2/portrait/PortraitDepthMapExif;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera2/portrait/PortraitDepthMapExif;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;-><init>(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;Lcom/android/camera2/portrait/PortraitDepthMapExif$1;)V

    return-object v0
.end method

.method public cameraPreferredMode(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->cameraPreferredMode:I

    return-object p0
.end method

.method public coordinatesOfOfTheRegionUnderWatermarks([I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method public depthLength(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->depthLength:I

    return-object p0
.end method

.method public dulCameraWaterMarkLocation([I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->dulCameraWaterMarkLocation:[I

    return-object p0
.end method

.method public dulWaterMark([B)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->dulWaterMark:[B

    return-object p0
.end method

.method public isBokehFrontCamera(Z)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isBokehFrontCamera:Z

    return-object p0
.end method

.method public isCinematicAspectRatio(Z)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isCinematicAspectRatio:Z

    return-object p0
.end method

.method public isFrontMirror(Z)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isFrontMirror:Z

    return-object p0
.end method

.method public isLTR(Z)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isLTR:Z

    return-object p0
.end method

.method public isSupportZeroDegreeOrientationImage(Z)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->isSupportZeroDegreeOrientationImage:Z

    return-object p0
.end method

.method public jpeg([B)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->jpeg:[B

    return-object p0
.end method

.method public jpegDataOfTheRegionUnderWatermarks([B)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method public lightingPattern(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->lightingPattern:I

    return-object p0
.end method

.method public pictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public portraitLightingVersioin(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->portraitLightingVersioin:I

    return-object p0
.end method

.method public rawLength(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->rawLength:I

    return-object p0
.end method

.method public rotation(I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->rotation:I

    return-object p0
.end method

.method public timeStamp(J)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeStamp:J

    return-object p0
.end method

.method public timeWaterMark([B)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeWaterMark:[B

    return-object p0
.end method

.method public timeWaterMarkLocation([I)Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->timeWaterMarkLocation:[I

    return-object p0
.end method
