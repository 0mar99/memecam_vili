.class public Lcom/android/camera/module/video/RecorderController;
.super Ljava/lang/Object;
.source "RecorderController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/RecorderController$ModuleCallback;,
        Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MSG_MOTION_DETECTION_RESTART:I = 0x0

.field public static final RESTART_TIME:I = 0x4e20

.field public static final TAG:Ljava/lang/String; = "RecorderController"


# instance fields
.field public final I_FRAME_FREQUENCY:I

.field public mCacheDir:Ljava/io/File;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

.field public final mLock:Ljava/lang/Object;

.field public mMediaRecorder:Landroid/media/MediaRecorder;

.field public mRecorderSurface:Landroid/view/Surface;

.field public mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field public mSplitWhenReachMaxSize:Z

.field public mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

.field public mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

.field public mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

.field public mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/video/VideoTrackInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/android/camera/module/video/RecorderController;->I_FRAME_FREQUENCY:I

    .line 5
    new-instance v0, Lcom/android/camera/module/video/RecorderController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video/RecorderController$1;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 7
    iput-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    .line 8
    iput-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/video/RecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/video/RecorderController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/video/RecorderController;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-object p0
.end method

.method private createRecorder()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "RecorderController"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    const-string p0, "RecorderController"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder: reset cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCodecLevelForTrueColour(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x3c

    const/16 v3, 0x18

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is1080PCamcorder()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 v1, 0x10

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 3
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is720PCamcorder()Z

    move-result p0

    if-eqz p0, :cond_8

    if-ne p1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    if-ne p1, v3, :cond_5

    const/16 v1, 0x20

    goto :goto_1

    :cond_5
    const/16 p0, 0x30

    if-ne p1, p0, :cond_6

    const/16 v1, 0x80

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    const/16 v1, 0x100

    goto :goto_1

    :cond_7
    const/16 v1, 0x40

    :cond_8
    :goto_1
    return v1
.end method

.method private prepareRecorder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder: prepare cost: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecorderController"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 5
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private setInputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private waitLastStopDone()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder: waitTime="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecorderController"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderReleased(Z)V

    return-void
.end method

.method public createRecordSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    const-string v1, "RecorderController"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public getRecordSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserRecordSettings()Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder>>startRecorder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecorderController"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3
    new-instance v13, Lcom/android/camera/module/video/InitRecorderResult;

    invoke-direct {v13}, Lcom/android/camera/module/video/InitRecorderResult;-><init>()V

    .line 4
    iget-object v14, v1, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 5
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->waitLastStopDone()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecordSurface()V

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    move-result v3

    iput-boolean v3, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v0, v10, v3}, Lcom/android/camera/module/video/AiAudioController;->initAiAudio(ZLandroid/content/Context;Landroid/media/MediaRecorder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move/from16 v3, p4

    .line 9
    :try_start_1
    invoke-virtual {v1, v10, v3}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/android/camera/module/video/MediaRecorderCreator;->setupMediaRecorder(Landroid/media/MediaRecorder;Lcom/android/camera/module/video/MediaRecorderParameter;)Landroid/media/MediaRecorder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 11
    :try_start_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 13
    :cond_1
    :goto_0
    :try_start_4
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 15
    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    .line 16
    iget-object v8, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 18
    invoke-virtual {v7}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v16, 0x1

    move-object v15, v8

    move/from16 v8, p1

    move-object/from16 v17, v9

    move/from16 v9, v16

    .line 19
    :try_start_5
    invoke-static/range {v2 .. v9}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v2

    iput-object v2, v15, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 20
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    goto :goto_1

    :cond_2
    move-object/from16 v17, v9

    .line 21
    :goto_1
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    .line 22
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_4

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    .line 26
    :cond_4
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    .line 27
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-direct {v1, v0}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v9, v17

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v9, v17

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    :goto_3
    :try_start_6
    const-string v2, ""

    .line 29
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_6

    .line 30
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 31
    iput-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    :cond_6
    const-string v3, "RecorderController"

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v5}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 35
    :goto_4
    iget-boolean v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v0, :cond_7

    const-string v0, "RecorderController"

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: recordSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {v3}, Lcom/android/camera/Util;->getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    iput-object v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 38
    iput-object v9, v13, Lcom/android/camera/module/video/InitRecorderResult;->recorderParameter:Lcom/android/camera/module/video/MediaRecorderParameter;

    .line 39
    :cond_7
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeRecorder<<time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :catchall_0
    move-exception v0

    .line 41
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public motionDetectionRestart()V
    .locals 10

    const-string v0, "RecorderController"

    const-string v1, "motionDetectionRestart E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->deleteFile()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->createRecordSurface()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameterForSlowMotion()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/module/video/MediaRecorderCreator;->setupMediaRecorder(Landroid/media/MediaRecorder;Lcom/android/camera/module/video/MediaRecorderParameter;)Landroid/media/MediaRecorder;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {v1, v2, v4, v5}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 13
    invoke-virtual {v7}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 14
    invoke-static/range {v2 .. v9}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getRecordSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/video/RecorderController;->startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    instance-of v2, v1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 23
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v4}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    :goto_1
    const-string p0, "motionDetectionRestart X"

    .line 25
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "MediaRecorder error. what=%d extra=%d"

    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    const-string v0, "RecorderController"

    invoke-static {p3, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0, p2}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderError(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const-string p3, "RecorderController"

    if-nez p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onInfo: ignore event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onInfo what : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo p1, "next output file started"

    .line 4
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onNextFileStarted()V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 8
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "max file size is approaching. split: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {p1, p2, v2, v1}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v3, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 15
    invoke-static/range {v0 .. v7}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_data"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nextVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p2, p3}, Lcom/android/camera/module/video/VideoUtil;->setNextOutputFile(Ljava/lang/String;Landroid/media/MediaRecorder;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxFileSizeReached()V

    goto :goto_0

    .line 21
    :pswitch_3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxDurationReached()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideoRecording()V
    .locals 6

    const-string v0, "RecorderController"

    const-string/jumbo v1, "pauseVideoRecording"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v1}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "failed to pause media recorder"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderPaused()V

    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 6

    const-string v0, "RecorderController"

    const-string/jumbo v1, "releaseRecorder"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseRecorder: reset cost: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecorderController"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseRecorder: release cost: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecorderController"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public releaseRecordSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const-string v1, "RecorderController"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAllMsg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecorderController"

    const-string/jumbo v2, "removeAllMsg"

    .line 2
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public resumeVideoRecording(Lcom/android/camera/protocol/protocols/RecordState;Lcom/android/camera/module/video/RecordRuntimeInfo;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 4
    iput-boolean v0, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    const-string v1, ""

    .line 5
    iput-object v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    const-string v1, "RecorderController"

    const-string v2, "failed to resume media recorder"

    .line 7
    invoke-static {v1, v2, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    return v0
.end method

.method public setModuleCallback(Lcom/android/camera/module/video/RecorderController$ModuleCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/video/RecorderController$RecorderStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-void
.end method

.method public setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-direct {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v4

    .line 4
    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setEnableAudio(Z)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v5, 0x2

    .line 5
    invoke-virtual {v2, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isNeededSetCamcorder(I)Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v2, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v2, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 9
    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOutputFormat(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 10
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupRecorder: videoSize = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "RecorderController"

    invoke-static {v9, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v10, v6, Lcom/android/camera/CameraSize;->width:I

    iget v6, v6, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v10, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSize(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    const/4 v10, 0x0

    if-nez v6, :cond_2

    const-string/jumbo v0, "setupRecorderParameter: cameraCapabilities is null"

    .line 14
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v6

    .line 16
    invoke-static {v6}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v11

    if-lez v11, :cond_3

    .line 17
    invoke-virtual {v2, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 18
    iget-object v12, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v12, v11}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 19
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setupRecorder: videoFrameRate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    goto :goto_1

    .line 20
    :cond_3
    iget-object v12, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v12, v12, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 21
    invoke-virtual {v2, v12}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 22
    iget-object v13, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v14, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v14, v14, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v13, v14}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setupRecorder: profile videoFrameRate = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v14, v14, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    .line 25
    iget-object v15, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v15, v15, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v15, v12}, Lcom/android/camera/module/video/VideoConfig;->getTrueColourVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v15

    .line 26
    invoke-direct {v0, v12}, Lcom/android/camera/module/video/RecorderController;->getCodecLevelForTrueColour(I)I

    move-result v10

    const/16 v5, 0x100

    .line 27
    invoke-virtual {v2, v5, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 28
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->quality:I

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v8, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x2

    aput-object v7, v8, v12

    const/4 v7, 0x3

    const/16 v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v7

    const/4 v7, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string/jumbo v7, "setupRecorder(TrueColor): quality = %d, framerate = %d, bitrate = %d, profile = %d, level = %d"

    .line 30
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 31
    :cond_4
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    const/16 v8, 0x1000

    const/4 v10, 0x5

    if-ne v10, v7, :cond_a

    .line 32
    invoke-static {v5}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v15

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupRecorder: H265 bitrate = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v5}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v5

    if-nez v5, :cond_5

    const/high16 v5, 0x40000

    goto :goto_2

    :cond_5
    const/high16 v5, 0x100000

    .line 35
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Ooooooo()I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    .line 36
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v10

    if-nez v10, :cond_6

    .line 37
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 38
    :cond_6
    invoke-virtual {v2, v7, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 39
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v12, v7

    const-string/jumbo v5, "setupRecorder: profile = %d, level = %d"

    invoke-static {v8, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 40
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 41
    invoke-virtual {v2, v8, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 43
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    .line 44
    invoke-virtual {v2, v7, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const/4 v7, 0x2

    .line 46
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 47
    invoke-virtual {v2, v7, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupRecorder: hdr10pro HEVCProfileMain10 & "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 49
    :cond_a
    iget v15, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 50
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "video/avc"

    .line 51
    invoke-static {v5}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 52
    invoke-virtual {v7, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 53
    iget-object v5, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v7, v5

    move v10, v14

    :goto_3
    if-ge v10, v7, :cond_c

    aget-object v12, v5, v10

    .line 54
    iget v14, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v8, v14, :cond_b

    iget v12, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v14, 0x8

    if-ne v14, v12, :cond_b

    .line 55
    invoke-virtual {v2, v14, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_4

    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x0

    goto :goto_3

    .line 56
    :cond_c
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupRecorder: H264 bitrate = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_d
    :goto_5
    invoke-virtual {v2, v15}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    if-eqz v4, :cond_e

    .line 58
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 59
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioChannels(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 60
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSamplingRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 61
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 62
    :cond_e
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_12

    const/16 v5, 0xd0

    const/16 v6, 0xa0

    if-ne v1, v5, :cond_f

    const-string v1, "10000"

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 64
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: MODE_FILM_EXPOSUREDELAY. timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeLapseDuration = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 67
    :cond_f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 68
    :cond_10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_new_video_time_lapse_frame_interval_key"

    .line 70
    invoke-virtual {v1, v5, v4}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 72
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_new_video_time_lapse_duration_key"

    .line 74
    invoke-virtual {v1, v5, v4}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeLapseDuration "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 77
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto/16 :goto_7

    .line 78
    :cond_12
    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0xac

    if-ne v4, v1, :cond_15

    .line 79
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-nez v1, :cond_15

    .line 80
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 81
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v4, v1

    const/4 v1, 0x2

    div-int/2addr v4, v1

    mul-int/2addr v15, v4

    .line 82
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v5, 0x1e0

    const-string/jumbo v6, "vendor.qti-ext-enc-entropy-mode.value=0"

    const-string/jumbo v7, "setupRecorder: set enc-entropy-mode to CAVLC"

    if-ne v4, v5, :cond_13

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_13

    const v1, 0x7270e00

    const-string v4, "camcorder.480fps.bitrate.max"

    .line 83
    invoke-static {v4, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 84
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 85
    invoke-static {v9, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_13
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v5, 0x3c0

    if-ne v4, v5, :cond_14

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_14

    .line 88
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00oO()Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x8583b00

    const-string v4, "camcorder.960fps.bitrate.max"

    .line 89
    invoke-static {v4, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: camcorder.960fps.bitrate.max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 92
    invoke-static {v9, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: bitRate = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: setVideoEncodingBitRate_960 = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v2, v15}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 97
    :cond_15
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_7

    :cond_16
    if-lez v11, :cond_17

    .line 98
    invoke-virtual {v2, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    int-to-double v4, v11

    .line 99
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/16 v4, 0xa2

    if-ne v1, v4, :cond_17

    .line 100
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v1, v6}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 101
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 102
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v4, v1

    const/4 v1, 0x2

    div-int/2addr v4, v1

    mul-int/2addr v15, v4

    .line 103
    invoke-virtual {v2, v15}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 104
    :cond_17
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: maxDuration = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxDuration(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 106
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/camera/ActivityBase;

    .line 107
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 108
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    goto :goto_8

    :cond_18
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_19

    .line 109
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setLocation(FF)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_19
    const-string v1, "camera.debug.video_max_size"

    const/4 v4, 0x0

    .line 110
    invoke-static {v1, v4}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 111
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {v1, v4, v5}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const-wide v7, 0xdac00000L

    if-lez v6, :cond_1a

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: maxFileSize = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxFileSize(J)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    cmp-long v6, v4, v7

    if-lez v6, :cond_1a

    const-string/jumbo v6, "param-use-64bit-offset=1"

    .line 114
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v6

    if-eqz v6, :cond_1c

    if-gtz v1, :cond_1b

    cmp-long v1, v4, v7

    if-nez v1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    .line 116
    iput-boolean v1, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_9

    :cond_1c
    const/4 v1, 0x0

    .line 117
    iput-boolean v1, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    .line 118
    :goto_9
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/video/SlowMotionModule;->isSlowMotion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 119
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS480(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 120
    new-instance v1, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.000"

    invoke-direct {v1, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video-param-i-frames-interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1d
    const-string/jumbo v1, "video-param-i-frames-interval=0.033"

    .line 123
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_a
    if-eqz v13, :cond_1f

    const-string/jumbo v1, "video-param-encoding-bframe=1"

    .line 124
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    const-string/jumbo v1, "video-param-encoding-bframe=0"

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_b
    iget-object v0, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {v2, v0}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOrientationHint(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 127
    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setExtraParameters(Ljava/util/List;)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 128
    invoke-virtual {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->build()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v0

    return-object v0
.end method

.method public setupRecorderParameterForSlowMotion()Lcom/android/camera/module/video/MediaRecorderParameter;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-direct {v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v3

    .line 4
    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setEnableAudio(Z)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v4, 0x2

    .line 5
    invoke-virtual {v1, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 6
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOutputFormat(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 7
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupRecorder: videoSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecorderController"

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v7, v5, Lcom/android/camera/CameraSize;->width:I

    iget v5, v5, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v1, v7, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSize(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v0, "setupRecorderParameter: cameraCapabilities is null"

    .line 11
    invoke-static {v6, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    .line 13
    invoke-static {v5}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 14
    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 15
    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v7, v5}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupRecorder: videoFrameRate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    goto :goto_0

    .line 17
    :cond_1
    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 18
    invoke-virtual {v1, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 19
    iget-object v8, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupRecorder: profile videoFrameRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    .line 22
    iget-object v8, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v8, v8, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v8, v7}, Lcom/android/camera/module/video/VideoConfig;->getTrueColourVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v8

    .line 23
    invoke-direct {v0, v7}, Lcom/android/camera/module/video/RecorderController;->getCodecLevelForTrueColour(I)I

    move-result v12

    const/16 v13, 0x100

    .line 24
    invoke-virtual {v1, v13, v12}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 25
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->quality:I

    .line 26
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v4

    const/4 v7, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v7

    const/4 v7, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v7

    const-string/jumbo v7, "setupRecorder(TrueColor): quality = %d, framerate = %d, bitrate = %d, profile = %d, level = %d"

    .line 27
    invoke-static {v14, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 28
    :cond_2
    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v7, Landroid/media/CamcorderProfile;->videoCodec:I

    const/16 v9, 0x1000

    const/4 v12, 0x5

    if-ne v12, v8, :cond_7

    .line 29
    invoke-static {v7}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v8

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: H265 bitrate = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, 0x40000

    .line 31
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v12

    invoke-virtual {v12}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Ooooooo()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v13

    if-nez v13, :cond_3

    .line 33
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 34
    :cond_3
    invoke-virtual {v1, v12, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 35
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v10

    const-string/jumbo v7, "setupRecorder: profile = %d, level = %d"

    invoke-static {v9, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 36
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 37
    invoke-virtual {v1, v9, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 39
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 40
    invoke-virtual {v1, v4, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 42
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 43
    invoke-virtual {v1, v4, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: hdr10pro HEVCProfileMain10 & "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 45
    :cond_7
    iget v8, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 46
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "video/avc"

    .line 47
    invoke-static {v7}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 48
    invoke-virtual {v12, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    .line 49
    iget-object v7, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v12, v7

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_9

    aget-object v14, v7, v13

    .line 50
    iget v15, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v9, v15, :cond_8

    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v15, 0x8

    if-ne v15, v14, :cond_8

    .line 51
    invoke-virtual {v1, v15, v9}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_2

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 52
    :cond_9
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupRecorder: H264 bitrate = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_a
    :goto_3
    invoke-virtual {v1, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    if-eqz v3, :cond_b

    .line 54
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 55
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioChannels(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 56
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSamplingRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 57
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 58
    :cond_b
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v3

    if-nez v3, :cond_f

    .line 59
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v3

    if-nez v3, :cond_e

    .line 60
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 61
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    div-int/2addr v5, v3

    div-int/2addr v5, v4

    mul-int/2addr v8, v5

    .line 62
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v5, 0x1e0

    const-string/jumbo v7, "vendor.qti-ext-enc-entropy-mode.value=0"

    const-string/jumbo v9, "setupRecorder: set enc-entropy-mode to CAVLC"

    if-ne v4, v5, :cond_c

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    const v3, 0x7270e00

    const-string v4, "camcorder.480fps.bitrate.max"

    .line 63
    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 64
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 65
    invoke-static {v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_c
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v5, 0x3c0

    if-ne v4, v5, :cond_d

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 68
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00oO()Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x8583b00

    const-string v4, "camcorder.960fps.bitrate.max"

    .line 69
    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: camcorder.960fps.bitrate.max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 72
    invoke-static {v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: bitRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v1, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 76
    :cond_e
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_4

    :cond_f
    if-lez v5, :cond_10

    .line 77
    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    int-to-double v12, v5

    .line 78
    invoke-virtual {v1, v12, v13}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 79
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    div-int/2addr v5, v3

    div-int/2addr v5, v4

    mul-int/2addr v8, v5

    .line 80
    invoke-virtual {v1, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 81
    :cond_10
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: maxDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxDuration(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const-string v3, "camera.debug.video_max_size"

    .line 83
    invoke-static {v3, v11}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 84
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {v3, v4, v5}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    const-wide v8, 0xdac00000L

    if-lez v7, :cond_11

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: maxFileSize = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxFileSize(J)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    cmp-long v7, v4, v8

    if-lez v7, :cond_11

    const-string/jumbo v7, "param-use-64bit-offset=1"

    .line 87
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v7

    if-eqz v7, :cond_13

    if-gtz v3, :cond_12

    cmp-long v3, v4, v8

    if-nez v3, :cond_13

    .line 89
    :cond_12
    iput-boolean v10, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_5

    .line 90
    :cond_13
    iput-boolean v11, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    .line 91
    :goto_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v3

    if-nez v3, :cond_14

    .line 92
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.000"

    invoke-direct {v3, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video-param-i-frames-interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_14
    iget-object v0, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOrientationHint(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 96
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setExtraParameters(Ljava/util/List;)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 97
    invoke-virtual {v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->build()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v0

    return-object v0
.end method

.method public startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z
    .locals 8

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oOO()Z

    move-result v0

    const-string v1, "RecorderController"

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p2

    if-gtz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 5
    :cond_0
    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0, p2}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStart(II)V

    const-string/jumbo p2, "notifyThermalRecordStart"

    .line 6
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    .line 11
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->removeAllMsg()V

    .line 13
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecorder: videoFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 16
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cost = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v0, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const/4 v2, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "could not start recorder: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    if-eqz p0, :cond_3

    const p1, 0x7f12031e

    const v0, 0x7f12031d

    .line 22
    invoke-interface {p0, p1, v0}, Lcom/android/camera/module/video/RecorderController$ModuleCallback;->showConfirmMessage(II)V

    :cond_3
    return p2
.end method

.method public stopRecorder(I)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oOO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    .line 6
    :cond_1
    new-instance v0, Lcom/android/camera/module/video/RecorderController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/RecorderController$2;-><init>(Lcom/android/camera/module/video/RecorderController;I)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0o;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    sget-object p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0O;

    .line 9
    invoke-virtual {p1, v0, p0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
