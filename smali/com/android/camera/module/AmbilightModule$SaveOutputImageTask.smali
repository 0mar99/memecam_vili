.class public Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public final mCaptureTime:J

.field public mHeight:I

.field public final mModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field

.field public mNv21Data:[B

.field public mOrientation:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;[BJLcom/android/camera/module/AmbilightModule$SaveStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2300(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    .line 4
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2400(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2500(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    .line 6
    iput-object p5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    .line 7
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    .line 9
    iput-wide p3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    return-void
.end method

.method private appendExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/location/Location;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4
    iget v6, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v7, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    iget v8, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iget-wide v9, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    sub-long v9, v4, v9

    iget-object v12, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-wide v13, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    const/16 v16, 0x1

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    invoke-static/range {v6 .. v16}, Lcom/android/camera/ExifTool;->appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;Z)V

    move-object/from16 v0, p2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 9
    :catch_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v2, "appendExif(): Failed to append exif metadata"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v2, "appendExif(): captureResult is null."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_2

    .line 11
    array-length v0, v3

    array-length v2, v1

    if-ge v0, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    iget v0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v3

    invoke-static {p1, v0, v1, v3}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    if-nez p1, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string p1, "jpegData is null, can\'t save"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 7
    invoke-direct {p0, p1, v1, v3}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->appendExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/location/Location;)[B

    move-result-object p1

    const/4 v4, 0x0

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    new-instance v1, Landroid/util/Size;

    iget v3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 10
    new-instance v9, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 12
    invoke-virtual {v9, p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 13
    new-instance p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/16 v3, 0x100

    invoke-direct {p1, v1, v1, v1, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    .line 15
    new-instance v3, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    .line 16
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;-><init>(ZZZLjava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/camera/Util;->isLTR()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v3

    const-string v4, ""

    if-eqz v1, :cond_3

    .line 18
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    iget v3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    .line 21
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    .line 22
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 23
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/watermark/WaterMarkUtil;->getTimeWatermarkStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/AmbilightModule;

    invoke-static {v1}, Lcom/android/camera/module/AmbilightModule;->access$2600(Lcom/android/camera/module/AmbilightModule;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setCurrentModuleIndex(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p1

    .line 28
    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 29
    invoke-virtual {v9, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 30
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    invoke-virtual {p0, v9, v0, v0, v0}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    :cond_5
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/AmbilightModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPreExecute"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
