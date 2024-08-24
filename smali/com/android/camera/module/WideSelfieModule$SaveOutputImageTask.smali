.class public Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "WideSelfieModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/WideSelfieModule;
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
.field public final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public mActualCameraId:I

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

.field public mCurrentModuleIndex:I

.field public final mFileName:Ljava/lang/String;

.field public mHeight:I

.field public mMirror:Z

.field public mNv21Data:[B

.field public mOrientation:I

.field public mStopMode:Ljava/lang/String;

.field public mTriggerMode:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;[BIIIZIIILcom/android/camera/fragment/beauty/BeautyValues;Ljava/lang/String;Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    .line 4
    iput p4, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    .line 5
    iput p5, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    .line 6
    iput p6, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCurrentModuleIndex:I

    .line 7
    iput-boolean p7, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    .line 8
    iput p9, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActualCameraId:I

    .line 9
    iput p8, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    .line 10
    iput p10, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    .line 11
    iput-object p11, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 12
    iput-object p12, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    .line 13
    iput-object p13, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    .line 14
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz p3, :cond_0

    const/4 v13, 0x0

    .line 3
    new-instance v1, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v1}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    iget v2, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCurrentModuleIndex:I

    .line 4
    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setCurrentModuleIndex(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v14, ""

    move-object/from16 v10, p3

    move-wide v11, v7

    move/from16 v16, p6

    move/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, v6

    .line 5
    invoke-static/range {v10 .. v21}, Lcom/android/camera/ExifTool;->updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B

    move-result-object v16

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, p2

    move-wide v12, v7

    move-object v14, v6

    move/from16 v15, p6

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-static/range {v10 .. v21}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p6

    move-wide v4, v7

    move-object v10, v6

    move-wide v11, v7

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    move/from16 v2, p6

    .line 8
    invoke-static {v9, v2, v10, v11, v12}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    :goto_0
    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v2, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v1, :cond_2

    .line 14
    iget-object v2, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 15
    iget-object v2, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addImageAsApplication Thumbnail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v4, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 18
    iget-object v0, v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 26

    move-object/from16 v7, p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyShowLevel()I

    move-result v0

    move v14, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    move v14, v0

    :goto_0
    const/4 v15, 0x1

    if-gtz v0, :cond_2

    if-lez v14, :cond_8

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    move/from16 v21, v1

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v21, v15

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v21, v2

    .line 9
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    new-instance v1, Lcom/android/camera/beautyshot/BeautyShot;

    invoke-direct {v1}, Lcom/android/camera/beautyshot/BeautyShot;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/beautyshot/BeautyShot;->init(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyShot start  mWidth "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 13
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyLevel "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v20, 0x10e

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/camera/beautyshot/BeautyShot;->processByBeautyLevel([BIIIII)I

    goto :goto_3

    :cond_6
    if-lez v14, :cond_7

    .line 15
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beautyLevel smooth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v9, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v10, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v11, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v12, 0x10e

    move-object v8, v1

    move/from16 v13, v21

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/beautyshot/BeautyShot;->processBySmoothLevel([BIIIII)I

    .line 17
    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/beautyshot/BeautyShot;->uninit()V

    .line 18
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beautyShot end, time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_8
    iget-boolean v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    if-eqz v0, :cond_a

    .line 20
    iget v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_9

    .line 21
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvVertical([BII)V

    goto :goto_4

    .line 22
    :cond_9
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvHorizontal([BII)V

    .line 23
    :cond_a
    :goto_4
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object v3

    const/4 v8, 0x0

    if-nez v3, :cond_b

    .line 24
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpegData is null, can\'t save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 25
    :cond_b
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xb0

    .line 29
    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    const/16 v21, 0x1

    iget v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActualCameraId:I

    iget-object v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/16 v24, 0x0

    const-string v25, "auto-off"

    move-object/from16 v16, v0

    move/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v23, v3

    invoke-static/range {v16 .. v25}, Lcom/android/camera/statistic/CameraStatUtils;->trackGeneralInfo(Ljava/util/Map;ZZIIZILcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera/MutexModeManager;Ljava/lang/String;)V

    .line 30
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureTakenInWideSelfie(Ljava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-object v8
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onPreExecute"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onPreExecute recordState is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingStart(I)V

    return-void
.end method
