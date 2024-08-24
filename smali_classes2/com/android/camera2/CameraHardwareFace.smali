.class public Lcom/android/camera2/CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardwareFace.java"


# static fields
.field public static final CAMERA_META_DATA_T2T:I = 0xface

.field public static final TAG:Ljava/lang/String; = "CameraHardwareFace"


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public beautyscore:F

.field public eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public id:I

.field public mouth:Landroid/graphics/Point;

.field public prob:F

.field public rect:Landroid/graphics/Rect;

.field public score:I

.field public smileDegree:I

.field public smileScore:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->id:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/CameraHardwareFace;->mouth:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->smileDegree:I

    .line 5
    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->smileScore:I

    .line 6
    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->faceRecognised:I

    .line 7
    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->faceType:I

    .line 8
    new-instance v0, Lcom/android/camera/trackfocus/EyeInfo;

    invoke-direct {v0}, Lcom/android/camera/trackfocus/EyeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera2/CameraHardwareFace;
    .locals 4

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lcom/android/camera2/CameraHardwareFace;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/android/camera2/CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera2/CameraHardwareFace;-><init>()V

    aput-object v2, v0, v1

    .line 4
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    invoke-static {v2, v3}, Lcom/android/camera2/CameraHardwareFace;->copyFace(Lcom/android/camera2/CameraHardwareFace;Landroid/hardware/camera2/params/Face;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static copyFace(Lcom/android/camera2/CameraHardwareFace;Landroid/hardware/camera2/params/Face;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/CameraHardwareFace;->score:I

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/CameraHardwareFace;->id:I

    return-void
.end method
