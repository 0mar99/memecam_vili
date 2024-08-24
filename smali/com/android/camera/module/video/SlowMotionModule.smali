.class public Lcom/android/camera/module/video/SlowMotionModule;
.super Lcom/android/camera/module/VideoModule;
.source "SlowMotionModule.java"


# static fields
.field public static final INTERPOLATOR_ACCURACY:I = 0x1

.field public static final SLOW_END_TIME:I

.field public static final SLOW_START_TIME:I

.field public static final SLOW_TIME:I

.field public static final sSlowMotionHFRList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSlowMotionHSRList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDumpOrig960:Ljava/lang/Boolean;

.field public mHeight:I

.field public mIsNeededPassRecord:Ljava/lang/Boolean;

.field public mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0o()I

    move-result v0

    sput v0, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_START_TIME:I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0O()I

    move-result v0

    sput v0, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_TIME:I

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0()I

    move-result v0

    sput v0, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_END_TIME:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    .line 6
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_480"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_960"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_1920"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_3840"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_120"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_240"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_480_direct"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    const-string/jumbo v1, "slow_motion_960_direct"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mIsNeededPassRecord:Ljava/lang/Boolean;

    return-void
.end method

.method private getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/video/SlowMotionModule$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/SlowMotionModule$1;-><init>(Lcom/android/camera/module/video/SlowMotionModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-object v0
.end method

.method private isActivityResumed()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDump960Orig()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "camera.record.960origdump"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isFPS120(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_120"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS1920(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_1920"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS240(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_240"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS3840(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_3840"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS480(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_480"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS480Direct(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_480_direct"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS960(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_960"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS960Direct(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_960_direct"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHFR(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHFRList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHSR(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/video/SlowMotionModule;->sSlowMotionHSRList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSlowMotion(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isHSR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private postProcessVideo(Lcom/android/camera/storage/mediastore/VideoFile;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "960fps processing failed. delete the files."

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v3, :cond_0

    return-object v5

    .line 4
    :cond_0
    iget-object v3, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v7, "slow_motion_960"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "slow_motion_480"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v10

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "slow_motion_3840"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v8

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "slow_motion_1920"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v9

    :cond_1
    :goto_0
    const/16 v3, 0x3c0

    const/16 v7, 0x1e0

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    const/16 v6, 0xf0

    move v12, v3

    move v11, v6

    goto :goto_1

    :cond_2
    const/16 v6, 0xf00

    move v11, v3

    move v12, v6

    goto :goto_1

    :cond_3
    const/16 v3, 0x780

    move v12, v3

    move v11, v7

    goto :goto_1

    :cond_4
    const/16 v3, 0x78

    move v11, v3

    move v12, v7

    .line 5
    :goto_1
    :try_start_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportSlowMotionVideoEditor()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v10

    .line 7
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v7, v13, v15

    if-nez v7, :cond_7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFD()Ljava/io/FileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 9
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 10
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->closeCurrentPFD()V

    .line 11
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v7

    .line 12
    sget-object v13, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " postProcessVideo: start srcFPS:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " dstFPS:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "  originalFile:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  originalFile length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  destFile:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " supportEditor:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v8, v13, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/SlowMotionModule;->isDump960Orig()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".orig.mp4"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    const-string v6, "destFile.getAbsolutePath()"

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destFile.getAbsolutePath() =  "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O000()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 21
    sget-object v6, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " originalFile="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    sget v15, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_START_TIME:I

    sget v16, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_TIME:I

    sget v17, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_END_TIME:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/SlowMotionModule;->getSeekToDuration()J

    move-result-wide v18

    move/from16 v20, v3

    move/from16 v21, v5

    .line 24
    invoke-static/range {v11 .. v21}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiVideoInterpolator;->doXiaomiAlgoDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;IIIJZZ)Z

    move-result v3

    goto :goto_3

    .line 25
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move v15, v3

    move/from16 v16, v5

    .line 27
    invoke-static/range {v11 .. v16}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v3

    .line 28
    :goto_3
    sget-object v5, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "postProcessVideo: end "

    invoke-static {v9, v5, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFD()Ljava/io/FileDescriptor;

    move-result-object v5

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->transfer(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v10, 0x1

    .line 31
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->closeCurrentPFD()V

    if-eqz v10, :cond_b

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 33
    iget v0, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v7, v0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionViewAlpha(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    if-nez v10, :cond_c

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "960fps processing failed."

    invoke-static {v3, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_c

    .line 35
    :goto_4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 37
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v10, :cond_d

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    return-object v5

    :catchall_1
    move-exception v0

    if-nez v10, :cond_e

    .line 39
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    :cond_e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 42
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d7933ef -> :sswitch_3
        -0x4d784eb4 -> :sswitch_2
        -0x449040df -> :sswitch_1
        -0x44902e58 -> :sswitch_0
    .end sparse-switch
.end method

.method private trackNewSlowMotionVideoRecorded()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS120(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS240(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS120(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fps120"

    goto :goto_0

    :cond_1
    const-string v2, "fps240"

    :goto_0
    move-object v3, v2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v2, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v5

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v2, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-static/range {v3 .. v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJLjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooOOO0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    iget v1, p0, Lcom/android/camera/module/video/SlowMotionModule;->mWidth:I

    iget v2, p0, Lcom/android/camera/module/video/SlowMotionModule;->mHeight:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    .line 2
    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->init()V

    return-void
.end method

.method public applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/SlowMotionModule;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-void
.end method

.method public doLaterReleaseIfNeed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: restartModule..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: dismissBlurCover..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-nez v1, :cond_2

    .line 10
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->cancelRectAnimator(I)V

    :cond_2
    return-void
.end method

.method public doVideoInfoTrack()V
    .locals 0

    return-void
.end method

.method public doVideoPostProcess(J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    const-string v2, "attr_feature_name"

    const-string v3, "key_video_960"

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mIsNeededPassRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p1

    const/16 p2, 0x1f40

    invoke-virtual {p1, p2, v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    sget-object p2, Lcom/android/camera/performance/Action$Event;->SLOW_MOTION_PROCESS:Lcom/android/camera/performance/Action$Event;

    invoke-virtual {p1, p2}, Lcom/android/camera/performance/PerformanceManager;->startEvent(Lcom/android/camera/performance/Action$Event;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {p1}, Lcom/android/camera/module/video/RecorderController;->getUserRecordSettings()Lcom/android/camera/module/video/UserRecordSetting;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-direct {p0, p1}, Lcom/android/camera/module/video/SlowMotionModule;->postProcessVideo(Lcom/android/camera/storage/mediastore/VideoFile;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p2

    new-array v0, v1, [Lcom/android/camera/performance/Action$Event;

    sget-object v5, Lcom/android/camera/performance/Action$Event;->SLOW_MOTION_PROCESS:Lcom/android/camera/performance/Action$Event;

    aput-object v5, v0, v4

    invoke-virtual {p2, v0}, Lcom/android/camera/performance/PerformanceManager;->stopEvent([Lcom/android/camera/performance/Action$Event;)J

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOo()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_2
    if-nez p1, :cond_3

    .line 11
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "postProcessVideo failed"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string p0, "fps_960_process_failed"

    .line 13
    invoke-static {v3, v2, p0}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS480(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "fps480"

    goto :goto_0

    :cond_4
    const-string p1, "fps960"

    :goto_0
    move-object v2, p1

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 17
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v4

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS480(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1e0

    goto :goto_1

    :cond_5
    const/16 p1, 0x3c0

    :goto_1
    move v5, p1

    const-wide/16 v6, 0xa

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJLjava/lang/String;)V

    :cond_6
    return v1

    .line 21
    :cond_7
    :goto_2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncomplete video.="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->deleteVideoFile(Ljava/lang/String;)V

    const-string p1, "fps_960_too_short"

    .line 23
    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p0, v4}, Lcom/android/camera/module/video/SlowMotionModule;->isNeedPassThisRecord(Z)V

    :cond_8
    return v4

    :cond_9
    return v1
.end method

.method public getHighSpeedRecordOperationMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSeekToDuration()J
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    iget-wide v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 3
    div-long/2addr v0, v2

    sget p0, Lcom/android/camera/module/video/SlowMotionModule;->SLOW_START_TIME:I

    int-to-long v2, p0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3d090

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seekTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public isEisOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableScreenShot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedPassThisRecord(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/video/SlowMotionModule;->mIsNeededPassRecord:Ljava/lang/Boolean;

    return-void
.end method

.method public isSelfDevelopedAlgorithm()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/video/SlowMotionModule;->useBackToStopRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onBackPressed()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x780

    .line 3
    iput v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mWidth:I

    const/16 v0, 0x438

    .line 4
    iput v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mHeight:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x500

    .line 5
    iput v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mWidth:I

    const/16 v0, 0x2d0

    .line 6
    iput v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mHeight:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isSelfDevelopedAlgorithm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOOO0;-><init>(Lcom/android/camera/module/video/SlowMotionModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public onMediaRecorderReleased(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/video/SlowMotionModule;->trackNewSlowMotionVideoRecorded()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/SlowMotionModule;->updateSuperSlowMotionMotionUi()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->cancelRectAnimator(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isSelfDevelopedAlgorithm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    invoke-virtual {p0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->unInit()V

    :cond_1
    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureResultParser;->getMotionDetectionStatus(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v0, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    iget-wide v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 5
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "less than 1s. bypass"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-wide v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTriggerTime:J

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 11
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMotionDetectionAnimator(Z)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3, v0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionRectAlpha(IIZ)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 15
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMotionDetectionTip(I)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->slowMotionDetectionRecordAnimator()V

    .line 18
    :cond_3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "motion detection success!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMotionDetectionState(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setMotionDetectionEnable(Z)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->removeAllMsg()V

    .line 22
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackDetectionSuccessRecord()V

    .line 23
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public slowMotionSuperClickEvent()Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraSettings.getMotionDetectionState()     \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v3

    const/16 v4, 0xac

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v4, :cond_1

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 8
    invoke-static {v6}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait for motion detection or second click shutter button"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v0, v3, v5, v1}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionCircleAlpha(IIZ)V

    .line 12
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMotionDetectionTip(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setMotionDetectionEnable(Z)V

    new-array v0, v1, [I

    const/16 v2, 0x60

    aput v2, v0, v5

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 16
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMotionDetectionState(Z)V

    .line 17
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setBackSlowMotionUIState(Z)V

    return v1

    :cond_1
    if-eqz v2, :cond_5

    .line 18
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 19
    invoke-static {v4}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v6, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    .line 24
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTriggerTime:J

    .line 25
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMotionDetectionAnimator(Z)V

    const/16 v4, 0x8

    .line 26
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMotionDetectionTip(I)V

    .line 27
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xff

    invoke-interface {v0, v2, v4, v1}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionRectAlpha(IIZ)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->removeAllMsg()V

    if-eqz v3, :cond_4

    .line 31
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->slowMotionDetectionRecordAnimator()V

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setMotionDetectionState(Z)V

    .line 34
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setMotionDetectionEnable(Z)V

    :cond_5
    return v5
.end method

.method public startCameraSession(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    return-void
.end method

.method public superSlowMotionDisableRecord(Landroid/content/Context;I)Z
    .locals 2

    const/16 p0, 0xac

    const/4 p1, 0x0

    if-eq p2, p0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS3840(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    .line 5
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slow_motion_temperature_limit   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->getCameraHalThermalResult()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ThermalDetector;->getCameraHalThermalResult()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    const/16 v0, 0x2e

    if-ge p2, v0, :cond_3

    const/16 p2, 0x14

    .line 7
    invoke-static {p2}, Lcom/android/camera/Util;->isLowPower(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    .line 10
    :cond_4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlowMotionDisableRecordTip(I)V

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public updateFpsRange()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHfrFPSRange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setVideoFpsRange(Landroid/util/Range;)V

    return-void
.end method

.method public updateSuperSlowMotionMotionUi()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->interruptRecordingUpdateAnimator(Z)V

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->cancelRectAnimator(I)V

    :cond_1
    return-void
.end method

.method public useBackToStopRecording()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLastBackPressedTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    const/4 v4, 0x1

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setLastBackPressedTime(J)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f1208ee

    invoke-static {p0, v0, v4}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/SlowMotionModule;->useBackUpdateMotionRect()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :goto_0
    return v4

    :cond_1
    return v1
.end method

.method public useBackUpdateMotionRect()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->checkRecordTimeValid(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->cancelRectAnimator(I)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMotionDetectionAnimator(Z)V

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setBackSlowMotionUIState(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/module/video/SlowMotionModule;->isNeedPassThisRecord(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/16 p0, 0x8

    .line 11
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMotionDetectionTip(I)V

    :cond_2
    return-void
.end method
