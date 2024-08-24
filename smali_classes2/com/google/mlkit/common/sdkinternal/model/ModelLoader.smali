.class public Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;,
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;,
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

.field public modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

.field public final remoteModelLoader:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;

.field public final zzb:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->NO_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "At least one of RemoteModelLoader or LocalModelLoader must be non-null."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->remoteModelLoader:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzb:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;

    return-void
.end method

.method private final zza()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    .line 2
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    .line 4
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    .line 5
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    .line 6
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    .line 7
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->getLocalModel()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/LocalModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->remoteModelLoader:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;

    if-nez p0, :cond_3

    const-string p0, "unspecified"

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->getRemoteModel()Lcom/google/mlkit/common/model/RemoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/common/model/RemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "Local model path: %s. Remote model name: %s. "

    .line 10
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzb(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->localModelLoader:Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/LocalModelLoader;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;->constructModel(Ljava/nio/MappedByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "ModelLoader"

    const-string v0, "Local model source is loaded successfully"

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/16 v0, 0x12

    .line 4
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->remoteModelLoader:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;->constructModel(Ljava/nio/MappedByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "ModelLoader"

    const-string v0, "Remote model source is loaded successfully"

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/16 v0, 0x13

    .line 4
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    throw p1

    .line 6
    :cond_0
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "ModelLoader"

    const-string v1, "Remote model source can NOT be loaded, try local model."

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x15

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelLoader"

    const-string v2, "Remote model source can NOT be loaded, try local model."

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized isRemoteModelLoaded()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->REMOTE_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadWithModelContentHandler(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzc(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;Ljava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v4, v3

    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzb:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;->logErrorCodes(Ljava/util/List;)V

    .line 4
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->REMOTE_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzb(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelContentHandler;Ljava/util/List;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzb:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;

    .line 6
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;->logErrorCodes(Ljava/util/List;)V

    .line 7
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->LOCAL_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/16 p1, 0x11

    .line 8
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zzb:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;

    .line 9
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingLogger;->logErrorCodes(Ljava/util/List;)V

    .line 10
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->NO_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->modelLoadingState:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    const/16 p1, 0xe

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 12
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local model load failed with the model options: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 14
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot load any model with the model options: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 16
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Remote model load failed with the model options: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
