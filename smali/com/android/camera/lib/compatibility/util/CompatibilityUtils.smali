.class public Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;
.super Ljava/lang/Object;
.source "CompatibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;
    }
.end annotation


# static fields
.field public static final ANDROID_R_VERSION:I = 0x1e

.field public static final ANDROID_S_VERSION:I = 0x1f

.field public static final ANDROID_S_VERSION_V2:I = 0x20

.field public static final ANDROID_T_VERSION:I = 0x21

.field public static final ANDROID_U_VERSION:I = 0x22

.field public static final AUDIO_RESTRICTION_NONE:I = 0x0

.field public static final AUDIO_RESTRICTION_VIBRATION_SOUND:I = 0x3

.field public static final CONTROL_EXTENDED_SCENE_MODE_BOKEH_CONTINUOUS:I = 0x2

.field public static final CONTROL_EXTENDED_SCENE_MODE_BOKEH_STILL_CAPTURE:I = 0x1

.field public static final CONTROL_EXTENDED_SCENE_MODE_DISABLED:I = 0x0

.field public static final IMAGE_FORMAT_HEIC:I = 0x48454946

.field public static final KEY_CONTROL_EXTENDED_SCENE_MODE:Ljava/lang/String; = "android.control.extendedSceneMode"

.field public static final TAG:Ljava/lang/String; = "CompatibilityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "I",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    if-nez p6, :cond_0

    const/4 p6, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$1;

    invoke-direct {v1, p6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$1;-><init>(Landroid/os/Handler;)V

    move-object p6, v1

    :goto_0
    invoke-direct {v0, p1, p3, p6, p5}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 4
    :cond_1
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method

.method public static fetchCamcorderProfile(Landroid/content/Context;II)Landroid/media/CamcorderProfile;
    .locals 1

    const v0, 0x7f1208b2

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p2, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isAndroidS()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p2, 0xd

    .line 3
    :cond_0
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method public static get8KProfile(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xd

    return p0

    :cond_0
    const v0, 0x7f1208b2

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAppBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->getAppBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getFrameAtTime(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->getFrameAtTime(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMiniKindThumbnail(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->getMiniKindThumbnail(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMotorStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/lib/compatibility/related/popcamera/PopCameraUtil;->getMotorStatus()I

    move-result v0

    return v0
.end method

.method public static getSdcardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "storage"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 2
    invoke-static {p0}, Lcom/xiaomi/compat/manager/StorageManagerCompat;->getVolumes(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object p0

    const-string v0, "CompatibilityUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 4
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSdcardPath: diskInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 9
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdcardPath: sdcardVolume = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSdcardPath sd="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method public static getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureRequest;)F
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->getZoomRatio(Landroid/hardware/camera2/CaptureRequest;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    .line 4
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/camera/HybridZoomingSystem;->toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public static getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->getZoomRatio(Landroid/hardware/camera2/CaptureResult;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/camera/HybridZoomingSystem;->toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public static is8KProfile(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x7f1208b2

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->get8KProfile(Landroid/content/Context;)I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isAndroidS()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAndroidS sdk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " preview sdk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompatibilityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHeicImageFormat(I)Z
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

.method public static popupMotor()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/lib/compatibility/related/popcamera/PopCameraUtil;->popupMotor()Z

    move-result v0

    return v0
.end method

.method public static setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public static setCutoutModeShortEdges(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static takebackMotor()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/lib/compatibility/related/popcamera/PopCameraUtil;->takebackMotor()Z

    move-result v0

    return v0
.end method

.method public static useScopedStorage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v30/V30Utils;->useScopedStorage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
