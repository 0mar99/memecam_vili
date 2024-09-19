.class public final Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "DualVideoRecordModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoRecordModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field public final mLocation:Landroid/location/Location;

.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v2

    .line 3
    new-instance v3, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 4
    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 7
    invoke-virtual {v3, p2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 8
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 9
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 10
    invoke-virtual {v3, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 p1, -0x1

    .line 12
    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 13
    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSnapshot(Z)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->storeImage([BLandroid/location/Location;)V

    return-void
.end method
