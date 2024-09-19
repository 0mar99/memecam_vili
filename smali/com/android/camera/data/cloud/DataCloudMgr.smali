.class public Lcom/android/camera/data/cloud/DataCloudMgr;
.super Ljava/lang/Object;
.source "DataCloudMgr.java"

# interfaces
.implements Lcom/android/camera/data/cloud/DataCloud$CloudManager;


# static fields
.field public static final CLOUD_DATA_MODULE_NAME:Ljava/lang/String; = "camera_settings_v3"

.field public static final CLOUD_DATA_UPDATE_INTERVAL:J = 0x2932e00L

.field public static final KEY_CLOUD_DATA_DEVICE_VERSION:Ljava/lang/String; = "cloud_data_device_version"

.field public static final KEY_CLOUD_DATA_LAST_UPDATE:Ljava/lang/String; = "cloud_data_last_update"

.field public static final KEY_CLOUD_DATA_VERSION:Ljava/lang/String; = "cloud_data_version"

.field public static final MOTION_CAPTURE_COMPLETELY_CLOSE:Ljava/lang/String; = "motion_capture_completely_close"

.field public static final TAG:Ljava/lang/String; = "DataCloudMgr"


# instance fields
.field public mDataCloudFeatureController:Lcom/android/camera/data/cloud/DataCloudFeatureController;

.field public mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

.field public mDataCloudItemConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/data/cloud/DataCloudItemConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    invoke-direct {v0}, Lcom/android/camera/data/cloud/DataCloudItemGlobal;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudItemConfigs:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/data/cloud/DataCloudMgr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->fillPreference()V

    return-void
.end method

.method public static checkLastUpdateTimeFormat()V
    .locals 4

    const-string v0, "cloud_data_last_update"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataLastUpdateTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "DataCloudMgr"

    const-string v2, "get cloud_data_last_update long value failed, try String type"

    .line 2
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v3, "try to convert the string value type to long for field [cloud_data_last_update]"

    .line 4
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v3

    .line 8
    invoke-interface {v3, v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    :goto_1
    return-void

    :catch_1
    const-string v0, "get cloud_data_last_update string value failed"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fillPreference()V
    .locals 12

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/cloud/DataCloudMgr;->provideDataCloudConfig(I)Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2}, Lcom/android/camera/data/cloud/DataCloudMgr;->provideDataCloudConfig(I)Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "version"

    const-string v6, "camera_settings_v3"

    .line 3
    invoke-static {v6, v5, v4}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static {}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataCommonVersion()Ljava/lang/String;

    move-result-object v8

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "camera_settings_v3_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v9, v5, v4}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataDeviceVersion()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v9, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    invoke-virtual {v9, v2}, Lcom/android/camera/data/cloud/DataCloudItemBase;->setReady(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;

    move-result-object v9

    invoke-interface {v9, v2}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->setReady(Z)V

    .line 10
    invoke-interface {v1, v2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    .line 11
    invoke-interface {v3, v2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    if-eqz v7, :cond_0

    .line 12
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    invoke-virtual {v2}, Lcom/android/camera/data/cloud/DataCloudItemBase;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    invoke-interface {v1}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-interface {v3}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSettingsFromCloudData common version "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "DataCloudMgr"

    invoke-static {v9, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v7}, Lcom/android/camera/data/cloud/DataCloudMgr;->setCloudDataCommonVersion(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v6}, Lcom/android/camera/data/cloud/DataCloudMgr;->updateSettingsFromCloudData(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSettingsFromCloudData device version "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v4}, Lcom/android/camera/data/cloud/DataCloudMgr;->setCloudDataDeviceVersion(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/data/cloud/DataCloudMgr;->updateSettingsFromCloudData(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/cloud/DataCloudItemBase;->setReady(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->setReady(Z)V

    .line 26
    invoke-interface {v1, v0}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    .line 27
    invoke-interface {v3, v0}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    return-void
.end method

.method public static getCloudDataCommonVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "cloud_data_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudDataDeviceVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "cloud_data_device_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudDataLastUpdateTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "cloud_data_last_update"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCloudDataCommonVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "cloud_data_version"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCloudDataDeviceVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "cloud_data_device_version"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCloudDataLastUpdateTime(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "cloud_data_last_update"

    invoke-interface {v0, v1, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method private updateSettingsFromCloudData(Ljava/lang/String;)V
    .locals 13

    const-string/jumbo v0, "type"

    const-string v1, "DataCloudMgr"

    :try_start_0
    const-string v2, "content"

    const/4 v3, 0x0

    .line 1
    invoke-static {p1, v2, v3}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "value"

    const-string v6, "key"

    const/4 v7, 0x0

    if-nez v4, :cond_7

    .line 3
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v7

    .line 4
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 5
    iget-object v8, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    .line 6
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 7
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "front"

    .line 9
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 10
    iget-object v8, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudItemConfigs:Landroid/util/SparseArray;

    const/4 v10, 0x1

    .line 11
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/cloud/DataCloudItemBase;

    goto :goto_1

    :cond_0
    const-string v11, "back"

    .line 12
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 13
    iget-object v8, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudItemConfigs:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/cloud/DataCloudItemBase;

    .line 15
    :cond_1
    :goto_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual {v8}, Lcom/android/camera/data/cloud/DataCloudItemBase;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 17
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 18
    instance-of v11, v9, Ljava/lang/Boolean;

    if-eqz v11, :cond_2

    .line 19
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 20
    :cond_2
    instance-of v11, v9, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    .line 21
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 22
    :cond_3
    instance-of v11, v9, Ljava/lang/Long;

    if-eqz v11, :cond_4

    .line 23
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v8, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 24
    :cond_4
    instance-of v11, v9, Ljava/lang/Float;

    if-eqz v11, :cond_5

    .line 25
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 26
    :cond_5
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 27
    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 28
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrong camera setting type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_2
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v0, "feature"

    .line 30
    invoke-static {p1, v0, v3}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 33
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 34
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v7, p1, :cond_8

    .line 35
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 37
    :cond_8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string p1, "JSONException when get camera settings !"

    .line 38
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudFeatureController:Lcom/android/camera/data/cloud/DataCloudFeatureController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/data/cloud/DataCloudFeatureController;

    invoke-direct {v0}, Lcom/android/camera/data/cloud/DataCloudFeatureController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudFeatureController:Lcom/android/camera/data/cloud/DataCloudFeatureController;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudFeatureController:Lcom/android/camera/data/cloud/DataCloudFeatureController;

    return-object p0
.end method

.method public fillCloudValues()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/cloud/DataCloudMgr;->checkLastUpdateTimeFormat()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/cloud/DataCloudMgr;->getCloudDataLastUpdateTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/cloud/DataCloudItemBase;->setReady(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->DataCloudFeature()Lcom/android/camera/data/cloud/DataCloud$CloudFeature;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->setReady(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/data/cloud/DataCloudMgr;->provideDataCloudConfig(I)Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/data/cloud/DataCloudMgr;->provideDataCloudConfig(I)Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->setReady(Z)V

    return-void

    .line 8
    :cond_0
    invoke-static {v0, v1}, Lcom/android/camera/data/cloud/DataCloudMgr;->setCloudDataLastUpdateTime(J)V

    .line 9
    new-instance v0, Lcom/android/camera/data/cloud/DataCloudMgr$1;

    invoke-direct {v0, p0}, Lcom/android/camera/data/cloud/DataCloudMgr$1;-><init>(Lcom/android/camera/data/cloud/DataCloudMgr;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    .line 11
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public provideDataCloudConfig(I)Lcom/android/camera/data/cloud/DataCloud$CloudItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/cloud/DataCloudItemConfig;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/data/cloud/DataCloudItemConfig;

    invoke-direct {v0, p1}, Lcom/android/camera/data/cloud/DataCloudItemConfig;-><init>(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public provideDataCloudGlobal()Lcom/android/camera/data/cloud/DataCloud$CloudItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    invoke-direct {v0}, Lcom/android/camera/data/cloud/DataCloudItemGlobal;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/cloud/DataCloudMgr;->mDataCloudGlobal:Lcom/android/camera/data/cloud/DataCloudItemGlobal;

    return-object p0
.end method
