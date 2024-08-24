.class public Lcom/android/camera/module/video/VideoTrackUtil;
.super Ljava/lang/Object;
.source "VideoTrackUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoHdr10Type()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "attr_video_hdr10"

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "attr_video_hdr10_plus"

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "attr_video_hlg"

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "attr_video_true_colour"

    goto :goto_0

    :cond_3
    const-string v0, "attr_video_hdr10_all_close"

    :goto_0
    return-object v0
.end method

.method public static getVideoMode(Lcom/android/camera/module/video/UserRecordSetting;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isSlowMotion(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "video_slow"

    goto :goto_0

    :cond_0
    const/16 p0, 0xd6

    if-ne v0, p0, :cond_1

    const-string/jumbo v1, "video_super_night"

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static trackMacroMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_slow_motion_macro"

    .line 4
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_macro_mode"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
