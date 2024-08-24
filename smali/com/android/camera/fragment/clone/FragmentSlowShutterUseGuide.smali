.class public Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;
.super Lcom/android/camera/fragment/BaseFragmentUseGuide;
.source "FragmentSlowShutterUseGuide.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentSlowShutterUseGuide"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentUseGuide;-><init>()V

    return-void
.end method


# virtual methods
.method public fillList(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/BaseVideoItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, " "

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "slow_shutter_sport_use_guide.mp4"

    const-string/jumbo v6, "slow_shutter_stop_use_guide.mp4"

    .line 3
    new-instance v15, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v10, 0x7f080994

    const v5, 0x7f1202b8

    .line 4
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v7, v16

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const v5, 0x7f12092c

    .line 5
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v16

    const v13, 0x7f120927

    .line 6
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v14

    const v13, 0x7f120928

    .line 7
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v7, v18

    const v13, 0x7f120929

    .line 8
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x3

    aput-object v13, v7, v19

    .line 9
    invoke-static {v7}, Lcom/android/camera/Util;->mergeText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x0

    move-object v7, v15

    move v5, v14

    move/from16 v14, v20

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v7, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v22

    iget-object v0, v0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v24, 0x7f080995

    const v4, 0x7f1202ba

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v16

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const v4, 0x7f12092d

    .line 13
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v16

    const v2, 0x7f12092a

    .line 14
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const v2, 0x7f120928

    .line 15
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v18

    const v2, 0x7f12092b

    .line 16
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v19

    .line 17
    invoke-static {v4}, Lcom/android/camera/Util;->mergeText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v21, v7

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v28}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FragmentSlowShutterUseGuide"

    const-string v2, "fillSlowShutterUseGuide "

    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffffd

    return p0
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [I

    const/16 v0, 0x23

    .line 2
    invoke-interface {p0, v0, p1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    const/4 p0, 0x1

    return p0
.end method
