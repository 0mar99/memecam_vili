.class public Lcom/android/camera/statistic/MistatsWrapper;
.super Ljava/lang/Object;
.source "MistatsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;,
        Lcom/android/camera/statistic/MistatsWrapper$TriggerMode;,
        Lcom/android/camera/statistic/MistatsWrapper$ModuleName;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "31000000285"

.field public static final CHANNEL:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MistatsWrapper"

.field public static mIsInit:Z

.field public static volatile mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field public static sDumpStatEvent:Z

.field public static sInitialized:Z

.field public static sIsCounterEventEnabled:Z

.field public static sIsEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_6

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "attr_trigger_mode"

    if-eqz v1, :cond_0

    const-string p2, "click"

    .line 4
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->getModeName()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v1

    const-string v2, "attr_module_name"

    if-eqz v1, :cond_1

    const-string p2, "M_idphoto"

    .line 8
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string p2, "attr_feature_name"

    .line 10
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 11
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "on"

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "off"

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "attr_value"

    .line 14
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "front"

    goto :goto_3

    :cond_5
    const-string p0, "back"

    :goto_3
    const-string p1, "attr_sensor_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common"

    .line 16
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_6

    .line 18
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method public static customizeCameraSettingClick(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_feature_name"

    .line 4
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_customize_camera"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static dumpEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapKey:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mapValue:"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "functionKey:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mapKey:"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapValue:"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpEvents(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "functionKey:"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mapKey:"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapValue:"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static featureTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "attr_trigger_mode"

    if-eqz v1, :cond_0

    const-string p2, "click"

    .line 4
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "on"

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "off"

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    .line 10
    invoke-static {p2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v1

    const-string v2, "attr_module_name"

    if-eqz v1, :cond_3

    const-string p2, "M_idphoto"

    .line 12
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string p2, "attr_value"

    .line 14
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "front"

    goto :goto_3

    :cond_4
    const-string p1, "back"

    :goto_3
    const-string p2, "attr_sensor_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    .line 18
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static getStatsModuleKey(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    const/4 v1, 0x0

    const-string v2, "camera.debug.dump_stat_event"

    .line 3
    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003d

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string v4, "camera.camera_statistic"

    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v3, :cond_1

    const v3, 0x7f05003c

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    .line 7
    new-instance v2, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v3, "31000000285"

    .line 8
    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 10
    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    .line 14
    invoke-static {p0, v2}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/android/camera/statistic/MistatsWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 15
    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    .line 16
    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setTestMode(Z)V

    .line 17
    :cond_1
    sput-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->mIsInit:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "none"

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "attr_trigger_mode"

    if-eqz v1, :cond_0

    const-string p3, "click"

    .line 5
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "on"

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "off"

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 10
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    .line 11
    invoke-static {p3}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v1

    const-string v2, "attr_module_name"

    if-eqz v1, :cond_3

    const-string p3, "M_idphoto"

    .line 13
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "front"

    goto :goto_3

    :cond_4
    const-string p1, "back"

    :goto_3
    const-string p2, "attr_sensor_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    .line 19
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static miStatEventNew(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v2

    const-string v3, "attr_module_name"

    if-eqz v2, :cond_0

    const-string v1, "M_idphoto"

    .line 6
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "front"

    goto :goto_1

    :cond_1
    const-string v1, "back"

    :goto_1
    const-string v2, "attr_sensor_id"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvents(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static mistatEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v2

    const-string v3, "attr_module_name"

    if-eqz v2, :cond_0

    const-string v1, "M_idphoto"

    .line 6
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "front"

    goto :goto_1

    :cond_1
    const-string v1, "back"

    :goto_1
    const-string v2, "attr_sensor_id"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static modeMistatsEvent(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_mode"

    const-string/jumbo v2, "photo"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    const-string v2, "attr_sensor_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    const-string v2, "attr_sensor_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static moduleRecordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_mode"

    const-string/jumbo v2, "video"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    const-string v2, "attr_sensor_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz p0, :cond_3

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "off"

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "attr_trigger_mode"

    const-string v1, "click"

    .line 6
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_feature_name"

    .line 7
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_value"

    .line 8
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "front"

    goto :goto_1

    :cond_2
    const-string p1, "back"

    :goto_1
    const-string p2, "attr_sensor_id"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_common"

    .line 10
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    sget-boolean p2, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p2, :cond_3

    .line 12
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "off"

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6501cdc9

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "attr_video_time_lapse_frame_interval"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    sget-object v0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_2
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_6

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_feature_name"

    .line 11
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_value"

    .line 12
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_settings_click"

    .line 13
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_6

    .line 15
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method public static settingSchedualEvent(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string/jumbo v2, "schedule"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "key_settings"

    .line 8
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/statistic/MistatsWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->mIsInit:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/statistic/MistatsWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
