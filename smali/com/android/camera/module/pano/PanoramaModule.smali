.class public Lcom/android/camera/module/pano/PanoramaModule;
.super Lcom/android/camera/module/pano/PanoramaModuleBase;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;,
        Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;,
        Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;,
        Lcom/android/camera/module/pano/PanoramaModule$PanoState;
    }
.end annotation


# static fields
.field public static final MIN_SHOOTING_TIME:J = 0x258L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public volatile mCanSavePanorama:Z

.field public mCaptureDirectionDecided:Z

.field public mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

.field public mDirection:I

.field public mDirectionFunction:Lcom/android/camera/panorama/direction/DirectionFunction;

.field public mDispPreviewImage:Landroid/graphics/Bitmap;

.field public mDispPreviewImageCanvas:Landroid/graphics/Canvas;

.field public mDispPreviewImagePaint:Landroid/graphics/Paint;

.field public mImageFormat:Ljava/lang/String;

.field public mLocation:Landroid/location/Location;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

.field public final mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

.field public mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

.field public mPreviewImage:Landroid/graphics/Bitmap;

.field public mShootingDisposable:Lio/reactivex/disposables/Disposable;

.field public mShootingStartTime:J

.field public mShutterEndTime:Ljava/lang/String;

.field public mShutterStartTime:Ljava/lang/String;

.field public mTimeTaken:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/module/pano/PanoramaModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    invoke-direct {v0}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    const-string v0, "YVU420_SEMIPLANAR"

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    .line 5
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/pano/PanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->savePanoramaPicture()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/pano/PanoramaModule;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule;->handleCaptureImage(Landroid/media/Image;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopShooting: setDisplayPreviewBitmap null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/Camera;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/android/camera/module/pano/PanoramaModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCanSavePanorama:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/module/pano/PanoramaModule;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isStopping()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/module/pano/PanoramaModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCaptureDirectionDecided:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/android/camera/module/pano/PanoramaModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCaptureDirectionDecided:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/pano/PanoramaModule;Lcom/android/camera/panorama/CaptureImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule;->setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/pano/PanoramaModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMaxWidth:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/module/pano/PanoramaModule;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMaxWidth:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/pano/PanoramaModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMaxHeight:I

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/module/pano/PanoramaModule;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMaxHeight:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/module/pano/PanoramaModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirection:I

    return p0
.end method

.method public static synthetic access$602(Lcom/android/camera/module/pano/PanoramaModule;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirection:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/direction/DirectionFunction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirectionFunction:Lcom/android/camera/panorama/direction/DirectionFunction;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/camera/module/pano/PanoramaModule;Lcom/android/camera/panorama/direction/DirectionFunction;)Lcom/android/camera/panorama/direction/DirectionFunction;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirectionFunction:Lcom/android/camera/panorama/direction/DirectionFunction;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private addImageAsApplication(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "w"

    .line 3
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    iget-wide v12, v8, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    iget v14, v8, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    move-object v11, v3

    invoke-static/range {v9 .. v14}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFd(Ljava/io/FileDescriptor;ILandroid/location/Location;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 5
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v4, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addImageAsApplication: failed, filePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 8
    :cond_1
    iget-wide v4, v8, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    invoke-static {v2, v7, v3, v4, v5}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-eqz v3, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    if-nez v1, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x0

    iget-wide v12, v8, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    iget-object v14, v8, Lcom/android/camera/module/pano/PanoramaModule;->mLocation:Landroid/location/Location;

    move-object/from16 v10, p2

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v9 .. v16}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    const/4 v13, 0x0

    iget-wide v14, v8, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    iget-object v3, v8, Lcom/android/camera/module/pano/PanoramaModule;->mLocation:Landroid/location/Location;

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v3

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v9 .. v18}, Lcom/android/camera/storage/Storage;->updateForGroupOrPanorama(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_5

    .line 11
    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication: insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_5
    move-object v9, v1

    .line 13
    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "attr_3a_locked"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v8, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    const-string v3, "attr_stop_capture_mode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move v11, v6

    move v12, v7

    move v7, v10

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 18
    new-instance v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;

    invoke-direct {v1}, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;-><init>()V

    .line 19
    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->takenNum:I

    .line 20
    iput-boolean v12, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->burst:Z

    .line 21
    iput-boolean v11, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->location:Z

    const/4 v0, -0x2

    .line 22
    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    .line 23
    iput-boolean v12, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isEnteringMoon:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 25
    invoke-virtual {v8, v1}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 28
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0O;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0O;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v9, :cond_6

    move-object/from16 v1, p3

    .line 29
    invoke-virtual {v0, v9, v1}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 30
    invoke-static {v0, v9, v12}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 31
    invoke-static {v0, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1, v12, v12}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_6
    return-void
.end method

.method private configEngine()V
    .locals 13

    .line 1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "configEngine start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v1}, Lcom/android/camera/panorama/PanoramaSetting;->getShrink_ratio()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setShrinkRatio(D)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setShrinkRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->isUse_deform()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUseDeform(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setUseDeform error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getZrotation_coeff()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setZrotationCoeff(D)I

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setZrotationCoeff error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getDraw_threshold()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDrawThreshold(D)I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDrawThreshold error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getAov_gain()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setAovGain(D)I

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setAovGain error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k1()D

    move-result-wide v5

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k2()D

    move-result-wide v7

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k3()D

    move-result-wide v9

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k4()D

    move-result-wide v11

    .line 15
    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDistortionCorrectionParam(DDDD)I

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDistortionCorrectionParam error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getRotation_ratio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setRotationRatio(D)I

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setRotationRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setSensorUseMode(I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setSensorUseMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setProjectionMode(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setProjectionMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setMotionDetectionMode(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setMotionDetectionMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_9
    iget v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirection:I

    const/4 v3, 0x5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq v0, v3, :cond_a

    const/4 v3, 0x6

    if-ne v0, v3, :cond_c

    .line 26
    :cond_a
    iget v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    int-to-double v6, v0

    iget v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    int-to-double v8, v0

    div-double/2addr v6, v8

    cmpl-double v0, v6, v4

    if-lez v0, :cond_b

    div-double v6, v4, v6

    :cond_b
    mul-double/2addr v4, v6

    .line 27
    :cond_c
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setReverseParam(DD)I

    move-result p0

    if-eqz p0, :cond_d

    .line 28
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string/jumbo p0, "setReverseParam error ret:0x%08X"

    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_d
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "configEngine end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "GMT"

    .line 3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createEngine(D)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "createEngine: finish prior Engine"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-direct {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    const-string v1, "YUV420_PLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    const-string v1, "YUV420_SEMIPLANAR"

    .line 7
    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    .line 11
    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    .line 12
    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleH:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovx:D

    .line 13
    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleV:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovy:D

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOo0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOo0o;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    .line 17
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string p1, "createEngine: direction invalid"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 19
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 20
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mCameraOrientation:I

    add-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    goto :goto_1

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mCameraOrientation:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    :goto_1
    const/16 v0, 0xa6

    .line 22
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lensType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wide"

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mGoalAngleVertical:I

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mGoalAngle:I

    :goto_2
    int-to-double v2, v2

    iput-wide v2, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    goto :goto_3

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mGoalAngle:I

    int-to-double v2, v2

    const-wide v4, 0x3fe40c49ba5e353fL    # 0.6265

    mul-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    .line 28
    :goto_3
    iget v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mCameraOrientation:I

    const/16 v2, 0x5a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_8

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_7

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v4

    .line 29
    :goto_4
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v2, v0}, Lcom/android/camera/panorama/SensorFusion;->setRotation(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "SensorFusion.setRotation error ret:0x%08X"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_9
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeEngine start "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirection:I

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createNativeOutputInfo()I

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "createNativeOutputInfo error ret:0x%08X"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)I

    move-result p0

    if-eqz p0, :cond_b

    .line 36
    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "initialize error ret:0x%08X"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 37
    :cond_b
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initializeEngine end "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static createNameString(J)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1205ea

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private disposeShooting()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShootingDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShootingDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private finishEngine()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->deleteNativeOutputInfo()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->finish(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "finish error ret:0x%08X"

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-void
.end method

.method private handleCaptureImage(Landroid/media/Image;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/panorama/Camera2Image;

    invoke-direct {v0, p1}, Lcom/android/camera/panorama/Camera2Image;-><init>(Landroid/media/Image;)V

    .line 2
    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$2;->$SwitchMap$com$android$camera$module$pano$PanoramaModule$PanoState:[I

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    invoke-virtual {v1}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->get()Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "stop_capture_un_expect"

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    invoke-direct {p1, p0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->attach(Lcom/android/camera/panorama/CaptureImage;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->requestStopShooting()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;-><init>(Lcom/android/camera/module/pano/PanoramaModule;Lcom/android/camera/module/pano/PanoramaModule$1;)V

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;->attach(Lcom/android/camera/panorama/CaptureImage;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 10
    iput-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->requestStopShooting()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/module/pano/PanoramaModule;->initPanoShootingEngine(Lcom/android/camera/panorama/CaptureImage;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    goto :goto_0

    .line 14
    :cond_5
    iput-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->requestStopShooting()V

    .line 16
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/panorama/CaptureImage;->close()V

    return-void
.end method

.method private initPanoShootingEngine(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsVertical:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    mul-float/2addr v1, v0

    float-to-double v0, v1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getImageFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPanoShootingEngine: ImageFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->createEngine(D)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mImageFormat:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setInputImageFormat(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPanoShootingEngine: setInputImageFormat error resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    new-instance p1, Lcom/android/camera/panorama/direction/DirectionFunction;

    iget v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    iget v4, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/panorama/direction/DirectionFunction;-><init>(IIIIFI)V

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDirectionFunction:Lcom/android/camera/panorama/direction/DirectionFunction;

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->configEngine()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    iget p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    invoke-virtual {p1, v1, p0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->start(II)I

    move-result p0

    if-eqz p0, :cond_2

    .line 12
    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPanoShootingEngine: start error resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 13
    :cond_2
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string p1, "initPanoShootingEngine: end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    .line 15
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string p1, "initPanoShootingEngine: failed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isShootingTooShort()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStopping()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->get()Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSaveCompleted(J)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDecideDirectionAttach:Lcom/android/camera/module/pano/PanoramaModule$DecideDirectionAttach;

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPreviewAttach:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onSaveCompleted: panorama mode has been paused"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(ZZ)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOoO0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOoO0;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 12
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string/jumbo p1, "onSaveCompleted: cost time = %d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStopShooting(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopShooting: recordState is null, succeed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingStart(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->resumePreview()V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingFinish()V

    :cond_4
    :goto_1
    return-void
.end method

.method private requestStopShooting()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->WAITING_STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0Oo;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private savePanoramaFile([Landroid/net/Uri;Ljava/lang/String;II)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    .line 1
    new-instance v16, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;

    invoke-direct/range {v16 .. v16}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;-><init>()V

    const/4 v14, 0x0

    .line 2
    invoke-static {v14}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    div-int/lit8 v17, v1, 0x64

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    iget-object v13, v0, Lcom/android/camera/module/pano/PanoramaModule;->mLocation:Landroid/location/Location;

    const-string v6, "image/jpeg"

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v20, v14

    move/from16 v14, v18

    move/from16 v15, v19

    .line 6
    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p1, v20

    const/4 v10, -0x1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget-object v2, p1, v20

    const-string/jumbo v3, "w"

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v1, v0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    iget-object v5, v0, Lcom/android/camera/module/pano/PanoramaModule;->mShutterStartTime:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/module/pano/PanoramaModule;->mShutterEndTime:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, v17

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->savePanorama360(IIIILjava/lang/String;Ljava/lang/String;ZLcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;Z)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_0

    .line 11
    :try_start_3
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePanoramaFile: open file failed, filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, p1, v20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, p1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-nez v10, :cond_2

    const/4 v1, 0x4

    .line 15
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v1, 0x6

    .line 16
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v20

    const-string/jumbo v3, "savePanorama360() -> 0x%x, delete uri"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v20
.end method

.method private savePanoramaPicture()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "savePanoramaPicture: while mMorphoPanoramaGP3 is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "savePanoramaPicture"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x600

    .line 5
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCanSavePanorama:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "savePanoramaPicture: end() -> 0x%x"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 6
    :try_start_1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "savePanoramaPicture: don\'t save image"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    invoke-virtual {v1}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v3, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setNoiseReductionParam(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v7, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "savePanoramaPicture: setNoiseReductionParam error ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v3, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUnsharpStrength(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "savePanoramaPicture: setUnsharpStrength error ret:0x%08X"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    invoke-virtual {v3}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v3

    int-to-double v7, v3

    invoke-virtual {v2, v5, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    .line 17
    :cond_5
    :try_start_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v3, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "savePanoramaPicture: getClippingRect() -> 0x%x"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    .line 21
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eqz v11, :cond_a

    if-nez v12, :cond_7

    goto/16 :goto_0

    .line 23
    :cond_7
    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v3, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createOutputImage(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePanoramaPicture: createOutputImage error ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    .line 26
    :cond_8
    :try_start_5
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v6, v3}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    .line 27
    iget-wide v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    invoke-static {v2, v3}, Lcom/android/camera/module/pano/PanoramaModule;->createNameString(J)Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-static {v10, v6}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    new-array v2, v5, [Landroid/net/Uri;

    .line 29
    invoke-direct {p0, v2, v9, v11, v12}, Lcom/android/camera/module/pano/PanoramaModule;->savePanoramaFile([Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_9

    .line 30
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    .line 31
    :cond_9
    :try_start_6
    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "savePanoramaPicture: process duration %s ms"

    new-array v7, v5, [Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    .line 33
    invoke-static {v3, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 34
    aget-object v8, v2, v6

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/module/pano/PanoramaModule;->addImageAsApplication(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    .line 37
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, "savePanoramaPicture: total duration %s ms"

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 38
    :cond_a
    :goto_0
    :try_start_7
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePanoramaPicture: getClippingRect() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 39
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->finishEngine()V

    .line 40
    throw v0
.end method

.method private setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v3, v3, v3, v2}, Lcom/android/camera/panorama/SensorFusion;->getSensorMatrix([D[D[D[I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object v5, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "SensorFusion.getSensorMatrix error ret:0x%08X"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0}, Lcom/android/camera/panorama/SensorFusion;->getStockData()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Lcom/android/camera/panorama/SensorInfoManager;

    invoke-direct {v6, v1}, Lcom/android/camera/panorama/SensorInfoManager;-><init>(I)V

    .line 7
    aget v1, v2, v3

    iput v1, v6, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    const/4 v1, 0x3

    .line 8
    aget v7, v2, v1

    iput v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    .line 9
    aget v2, v2, v4

    iput v2, v6, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->img_ix:J

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->timeMillis:J

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getTimestamp()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->imageTimeStamp:J

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensitivity()I

    move-result v2

    iput v2, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensitivity:I

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getExposureTime()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->exposureTime:J

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getRollingShutterSkew()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->rollingShutterSkew:J

    .line 16
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensorTimeStamp()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorTimeStamp:J

    .line 17
    iget-object p1, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object p1, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object p1, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 21
    iget-object v2, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p1, :cond_2

    .line 22
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/panorama/SensorInfoManager;

    .line 23
    iget v7, v2, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    iput v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    .line 24
    iget-object v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    iget-object v2, v2, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_2
    iget-object v2, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez p1, :cond_3

    .line 26
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/panorama/SensorInfoManager;

    .line 27
    iget v7, v2, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    iput v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    .line 28
    iget-object v7, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    iget-object v2, v2, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    :cond_3
    iget-object v1, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    .line 30
    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    .line 31
    iget v1, p1, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    iput v1, v6, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    .line 32
    iget-object v1, v6, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v1

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    .line 36
    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array p1, p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    .line 38
    invoke-virtual {v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setGyroscopeData([Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string/jumbo p1, "setGyroscopeData error ret:0x%08X"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p0}, Lcom/android/camera/panorama/SensorFusion;->clearStockData()V

    return-void
.end method

.method private startBurstRequest(Lio/reactivex/FlowableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/media/Image;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAwbLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mLocation:Landroid/location/Location;

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setGpsLocation(Landroid/location/Location;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setFocusMode(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setJpegQuality(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {v3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isZslPreferred()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setEnableZsl(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setNeedPausePreview(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lcom/android/camera/module/pano/PanoramaModule$1;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$1;-><init>(Lcom/android/camera/module/pano/PanoramaModule;Lio/reactivex/FlowableEmitter;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startSaveTask()Lio/reactivex/disposables/Disposable;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOO0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOO0;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    invoke-static {v2}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0;

    invoke-direct {v3, p0, v0, v1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0;-><init>(Lcom/android/camera/module/pano/PanoramaModule;J)V

    .line 5
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/pano/PanoramaModule;->onSaveCompleted(J)V

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->serialize()Lio/reactivex/FlowableEmitter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule;->startBurstRequest(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/pano/PanoramaModule;->stopShooting(ZZ)V

    return-void
.end method

.method public isDoingAction()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isStopping()Z

    move-result p0

    return p0
.end method

.method public isShooting()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->get()Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->disposeShooting()V

    return-void
.end method

.method public startShooting()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startShooting: shooting on progress"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startShooting: recordState null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 8
    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startShooting"

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCanSavePanorama:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCaptureDirectionDecided:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mTimeTaken:J

    .line 12
    invoke-static {v2, v3}, Lcom/android/camera/module/pano/PanoramaModule;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShutterStartTime:Ljava/lang/String;

    const-string v2, ""

    .line 13
    iput-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShutterEndTime:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->disposeShooting()V

    .line 15
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    sget-object v3, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    .line 16
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0OO;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOo0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOo0O;

    .line 17
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 18
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOO;-><init>(Lcom/android/camera/module/pano/PanoramaModule;)V

    .line 19
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShootingDisposable:Lio/reactivex/disposables/Disposable;

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 21
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShootingStartTime:J

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void
.end method

.method public stopShooting(ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isShooting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopShooting: not shooting"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopShooting: panorama shooting is too short, ignore this click"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 p1, 0x2

    .line 8
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopShooting: start, isRelease="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    invoke-virtual {p1}, Lcom/android/camera/panorama/RoundDetector;->stop()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mPanoState:Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;

    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOO0o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 17
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/camera/module/pano/PanoramaModule;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mShutterEndTime:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule;->startSaveTask()Lio/reactivex/disposables/Disposable;

    .line 20
    iget-boolean p1, p0, Lcom/android/camera/module/pano/PanoramaModule;->mCanSavePanorama:Z

    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule;->onStopShooting(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
