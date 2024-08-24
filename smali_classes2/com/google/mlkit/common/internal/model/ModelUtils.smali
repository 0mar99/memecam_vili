.class public Lcom/google/mlkit/common/internal/model/ModelUtils;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;,
        Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelLoggingInfo(Landroid/content/Context;Lcom/google/mlkit/common/model/LocalModel;)Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Failed to open model file"

    const-string v4, "ModelUtils"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->isManifestFile()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 5
    invoke-static {p0, v0, v6}, Lcom/google/mlkit/common/internal/model/ModelUtils;->zzb(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v5

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_7

    .line 8
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_2

    .line 9
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, p1}, Lcom/google/mlkit/common/internal/model/zzh;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 11
    invoke-virtual {p1, v4, v3, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    :cond_3
    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->isManifestFile()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 13
    invoke-static {p0, v1, v6}, Lcom/google/mlkit/common/internal/model/ModelUtils;->zzb(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    return-object v5

    :cond_5
    :goto_2
    new-instance v6, Ljava/io/File;

    .line 14
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_13

    :try_start_5
    const-string v6, "r"

    .line 15
    invoke-static {p0, v2, v6}, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 16
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_7

    .line 17
    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 18
    :cond_7
    :goto_3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v6

    const-class v9, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v6, v9}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    if-eqz v0, :cond_8

    move-object v9, v0

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    move-object v9, v1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 20
    :goto_4
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->zza(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->isManifestFile()Z

    move-result p0

    invoke-static {v7, v8, v10, p0}, Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;->zza(JLjava/lang/String;Z)Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v10, "Failed to close model file"

    if-eqz v0, :cond_b

    .line 22
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    goto :goto_9

    :cond_b
    if-eqz v1, :cond_c

    .line 23
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_5

    .line 25
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza:I

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzi;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzj;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzi;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_5
    if-eqz p0, :cond_d

    .line 27
    :try_start_9
    invoke-static {p0}, Lcom/google/mlkit/common/internal/model/ModelUtils;->zzc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_a

    :cond_d
    move-object v0, v5

    :goto_6
    if-eqz v0, :cond_e

    .line 28
    invoke-virtual {v6, v9, v7, v8, v0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->zzb(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    :cond_e
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->isManifestFile()Z

    move-result p1

    invoke-static {v7, v8, v0, p1}, Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;->zza(JLjava/lang/String;Z)Lcom/google/mlkit/common/internal/model/ModelUtils$ModelLoggingInfo;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p0, :cond_f

    .line 30
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    .line 31
    sget-object v0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 32
    invoke-virtual {v0, v4, v10, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    return-object p1

    :goto_8
    move-object p1, p0

    goto :goto_c

    :goto_9
    move-object p1, p0

    move-object p0, v5

    .line 33
    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 34
    invoke-virtual {v0, v4, v3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz p0, :cond_10

    .line 35
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_b

    :catch_4
    move-exception p0

    .line 36
    sget-object p1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 37
    invoke-virtual {p1, v4, v10, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_b
    return-object v5

    :catchall_3
    move-exception p1

    move-object v5, p0

    :goto_c
    if-eqz v5, :cond_11

    .line 38
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    .line 39
    sget-object v0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-virtual {v0, v4, v10, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_11
    :goto_d
    throw p1

    :catchall_4
    move-exception p0

    if-eqz v6, :cond_12

    .line 41
    :try_start_e
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception p1

    :try_start_f
    invoke-static {p0, p1}, Lcom/google/mlkit/common/internal/model/zzh;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_12
    :goto_e
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :catch_6
    move-exception p0

    .line 42
    sget-object p1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 43
    invoke-virtual {p1, v4, v3, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    .line 44
    :cond_13
    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "Local model doesn\'t have any valid path."

    .line 45
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static getSHA256(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/google/mlkit/common/internal/model/ModelUtils;->zzc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p0, v0}, Lcom/google/mlkit/common/internal/model/zzh;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to create FileInputStream for model: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ModelUtils"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseManifestFile(Ljava/lang/String;ZLandroid/content/Context;)Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "Manifest file path: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModelUtils"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :catch_0
    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "Manifest file does not exist."

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-array p0, v3, [B

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Ljava/io/FileInputStream;

    new-instance p2, Ljava/io/File;

    .line 10
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, p1

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p2, p1, [B

    .line 12
    invoke-virtual {p0, p2, v3, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    move-object p0, p2

    .line 14
    :goto_2
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    .line 15
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Json string from the manifest file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "modelType"

    .line 18
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "modelFile"

    .line 19
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "labelsFile"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/google/mlkit/common/internal/model/AutoValue_ModelUtils_AutoMLManifest;

    .line 21
    invoke-direct {v1, p1, p2, p0}, Lcom/google/mlkit/common/internal/model/AutoValue_ModelUtils_AutoMLManifest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 22
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-static {p1, p0}, Lcom/google/mlkit/common/internal/model/zzh;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 23
    sget-object p1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "Error parsing the manifest file."

    .line 24
    invoke-virtual {p1, v2, p2, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static zza(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/mlkit/common/internal/model/ModelUtils;->getSHA256(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "Calculated hash value is: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModelUtils"

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1, p2, p0}, Lcom/google/mlkit/common/internal/model/ModelUtils;->parseManifestFile(Ljava/lang/String;ZLandroid/content/Context;)Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "ModelUtils"

    const-string p2, "Failed to parse manifest file."

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;->getModelFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const-string v0, "ModelUtils"

    :try_start_0
    const-string v1, "SHA-256"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/high16 v2, 0x100000

    new-array v2, v2, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 3
    invoke-virtual {v1, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    :goto_1
    array-length v2, p0

    if-ge v5, v2, :cond_2

    .line 7
    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x30

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 11
    :catch_0
    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Failed to read model file"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :catch_1
    sget-object p0, Lcom/google/mlkit/common/internal/model/ModelUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Do not have SHA-256 algorithm"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
