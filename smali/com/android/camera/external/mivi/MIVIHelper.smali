.class public Lcom/android/camera/external/mivi/MIVIHelper;
.super Ljava/lang/Object;
.source "MIVIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/external/mivi/MIVIHelper$SettingDataChangeObserver;
    }
.end annotation


# static fields
.field public static final CLOUD_CAMERA_CONTROLLER_INFO_KEY:Ljava/lang/String; = "camera_controller_info"

.field public static final CLOUD_CAMERA_MIVI_APP_LIST_KEY:Ljava/lang/String; = "AppList"

.field public static final CLOUD_CAMERA_MIVI_APP_WHITELIST_KEY:Ljava/lang/String; = "mivi_app_whiteList"

.field public static final CLOUD_CAMERA_MIVI_PACKAGE_NAME_KEY:Ljava/lang/String; = "PackageName"

.field public static final CLOUD_CAMERA_MIVI_PLATFORM_INFO_KEY:Ljava/lang/String; = "mivi_platform_info"

.field public static final CLOUD_DATA_MODULE_FRAMEWORK:Ljava/lang/String; = "camera_framework"

.field public static final CLOUD_DATA_MODULE_SDK:Ljava/lang/String; = "camera_sdk"

.field public static final EMPTY_DATA:Ljava/lang/String; = "{}"

.field public static final INTERFACE_NAME_1_0:Ljava/lang/String; = "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

.field public static final KEY_PLATFORM_INFO:Ljava/lang/String; = "platformInfo"

.field public static LOCAL_MIVI_INFO_FILE_NAME:Ljava/lang/String; = "mivi_info.json"

.field public static final SERVICE_NAME:Ljava/lang/String; = "default"

.field public static final TAG:Ljava/lang/String; = "MIVIHelper"

.field public static mDataChanged:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/cloud/DataCloudItemMIVI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MIVIHelper"

    const-string v1, "[WTP]requestCloudData: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->getStringFromLocalFile()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "requestCloudDataAsync: config with local miviinfo"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v1}, Lcom/android/camera/external/mivi/MIVIHelper;->setMiViInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-boolean p0, Lcom/android/camera/external/mivi/MIVIHelper;->mDataChanged:Z

    if-nez p0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->listenSettingDataChange()V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "requestCloudDataAsync: set null info"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcom/android/camera/external/mivi/MIVIHelper;->setMiViInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/external/mivi/MIVIHelper;->setMiViInfo(Ljava/lang/String;)V

    :goto_0
    const-string p0, "[WTP]requestCloudData: X"

    .line 12
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCloudData: occurs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MIVIHelper"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "{}"

    .line 14
    invoke-static {p0}, Lcom/android/camera/external/mivi/MIVIHelper;->setMiViInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static getCameraControllerData()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->getStringFromLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera_framework"

    const-string v2, "camera_controller_info"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lcom/android/camera/external/mivi/MIVIHelper;->parseControllerData(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "MIVIHelper"

    const-string v2, "getCameraControllerData: replace with local mivi info"

    .line 6
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return-object v2

    .line 10
    :cond_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lcom/android/camera/external/mivi/MIVIHelper;->parseControllerData(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2
.end method

.method public static getCloudData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCloudData: start > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIVIHelper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->getStringFromLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "getCloudData: replace with cloud split mivi info "

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0}, Lcom/android/camera/external/mivi/MIVIHelper;->getCloudDataFromCloud(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "getCloudData: replace with local mivi info "

    .line 6
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/external/mivi/MIVIHelper;->parseLocalData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCloudDataFromCloud(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "mivi_platform_info"

    const-string v2, "camera_sdk"

    .line 2
    invoke-static {v2, v1}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string/jumbo v3, "platformInfo"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    const-string v1, "mivi_app_whiteList"

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/external/mivi/MIVIHelper;->parseAppWhiteList(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "appInfo"

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromLocalFile()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/android/camera/external/mivi/MIVIHelper;->LOCAL_MIVI_INFO_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringFromLocalFile E >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIVIHelper"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "getStringFromLocalFile: X return null"

    .line 4
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringFromLocalFile X"

    .line 6
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static listenSettingDataChange()V
    .locals 5

    const-string v0, "MIVIHelper"

    const-string v1, "listenSettingDataChange: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/camera/external/mivi/MIVIHelper$SettingDataChangeObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/android/camera/external/mivi/MIVIHelper$SettingDataChangeObserver;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static parseAppWhiteList(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 3

    const-string v0, "mivi_app_whiteList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "PackageName"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "parseAppWhiteList: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIVIHelper"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseControllerData(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "camera_controller_info"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLocalData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "mivi_platform_info"

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string/jumbo v2, "platformInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera/external/mivi/MIVIHelper;->parseAppWhiteList(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "appInfo"

    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "parseAllData: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIVIHelper"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requestCloudDataAsync()V
    .locals 4

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MIVIHelper"

    const-string/jumbo v1, "requestCloudDataAsync: "

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/android/camera/resource/conf/ConfMIVIRequest;

    invoke-direct {v0}, Lcom/android/camera/resource/conf/ConfMIVIRequest;-><init>()V

    const-class v1, Lcom/android/camera/data/cloud/DataCloudItemMIVI;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0O0;

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO00o;

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static setCapabilities(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    const-string v1, "default"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 3
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5
    new-instance p0, Landroid/os/HwParcel;

    invoke-direct {p0}, Landroid/os/HwParcel;-><init>()V

    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-interface {v1, v0, v2, p0, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 7
    invoke-virtual {p0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 8
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/HwParcel;->release()V

    .line 10
    throw v0
.end method

.method public static setDataChanged(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/camera/external/mivi/MIVIHelper;->mDataChanged:Z

    return-void
.end method

.method public static setMiViInfo(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "{}"

    .line 2
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "mivi_platform_info"

    const-string/jumbo v2, "platformInfo"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to setMiViInfo info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIVIHelper"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    const-string/jumbo v0, "setMiViInfo: MIVI2.0 E "

    .line 8
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo p0, "setMiViInfo: MIVI2.0 X "

    .line 11
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/engine/MiCameraAlgo;->setMiViInfo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_1
    const-string v3, "begin to setMiViInfo info with java interface"

    .line 14
    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    :cond_4
    invoke-static {p0}, Lcom/android/camera/external/mivi/MIVIHelper;->setCapabilities(Ljava/lang/String;)V

    const-string p0, "iMiPostProcService: setMiViInfo success "

    .line 19
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMiViInfo: setMiViInfo failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
