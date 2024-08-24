.class public Lcom/android/camera2/MiCamera2ShotSimplePreview;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotSimplePreview.java"

# interfaces
.implements Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "[B>;",
        "Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MiCamera2ShotSimplePreview"


# instance fields
.field public mSaver:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotSimplePreview;->notifyResultData([B)V

    return-void
.end method

.method public notifyResultData([B)V
    .locals 0

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public save([BIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJI)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 5
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->mSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v4, :cond_2

    .line 6
    new-instance v4, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;

    invoke-direct {v4}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;-><init>()V

    .line 7
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;

    .line 9
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 10
    invoke-virtual {v4, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 11
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 13
    invoke-virtual {v4, v0}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 14
    invoke-virtual {v4, p2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 15
    invoke-virtual {v4, p3}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 16
    invoke-virtual {v4, p4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 17
    invoke-virtual {v4, v1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 p1, -0x1

    .line 18
    invoke-virtual {v4, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 19
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->mSaver:Lcom/android/camera/storage/ImageSaver;

    const/4 p1, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->mSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public startSessionCapture()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v6, Lcom/android/camera2/QuickViewParam;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 3
    invoke-interface {p0, v6}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->TAG:Ljava/lang/String;

    const-string v0, "startSessionCapture: null picture callback"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
