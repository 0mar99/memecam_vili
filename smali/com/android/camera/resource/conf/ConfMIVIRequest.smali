.class public Lcom/android/camera/resource/conf/ConfMIVIRequest;
.super Lcom/android/camera/resource/SimpleParseRequest;
.source "ConfMIVIRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleParseRequest<",
        "Lcom/android/camera/data/cloud/DataCloudItemMIVI;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLOUD_CAMERA_EXTENSION_KEY:Ljava/lang/String; = "camera_extension"

.field public static final CLOUD_DATA_KEY:Ljava/lang/String; = "miviInfo"

.field public static final CLOUD_DATA_MODULE_FRAMEWORK:Ljava/lang/String; = "camera_framework"

.field public static final CLOUD_DATA_MODULE_NAME:Ljava/lang/String; = "camera_v4"

.field public static final CLOUD_DATA_MODULE_SDK:Ljava/lang/String; = "camera_sdk"

.field public static final TAG:Ljava/lang/String; = "ConfMIVIRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/SimpleParseRequest;-><init>()V

    return-void
.end method

.method public static getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 3

    const-string v0, "ConfMIVIRequest"

    const-string v1, "getCloudDataObject: START >>"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    invoke-static {v1, p0}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/android/camera/resource/conf/ConfRequestUtil;->getDataByKey(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudDataObject: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCloudDataString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_v4"

    const-string v2, "miviInfo"

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiviDataString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "camera_framework"

    const-string v2, "camera_controller_info"

    .line 2
    invoke-static {v1, v2}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    const-string v2, "mivi_app_whiteList"

    const-string v3, "camera_sdk"

    .line 3
    invoke-static {v3, v2}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v2, "AppList"

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_1
    const-string v2, "camera_extension"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiviDataString: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfMIVIRequest"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public processParse(Lcom/android/camera/data/cloud/DataCloudItemMIVI;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getMiviDataString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->setData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/data/cloud/DataCloudItemMIVI;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->processParse(Lcom/android/camera/data/cloud/DataCloudItemMIVI;)V

    return-void
.end method
