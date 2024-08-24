.class public Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field public static final zzb:Ljava/util/Map;


# instance fields
.field public final zzc:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

.field public final zzd:Lcom/google/mlkit/common/model/RemoteModel;

.field public final zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

.field public final zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

.field public final zzg:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_common/zzpn;

.field public zzi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileMover;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    new-instance v4, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    invoke-direct {v4, p1}, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileMover;)V

    iput-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzi:Z

    new-instance p3, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    invoke-direct {p3, p1}, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    const-class p5, Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    .line 2
    invoke-virtual {p1, p5}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;

    .line 3
    invoke-static {p1, p2, p3, v0, p5}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;)Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    move-result-object p3

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzg:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzc:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    const-string p1, "common"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzpn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileMover;)Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;
    .locals 9

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/RemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileMover;)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb:Ljava/util/Map;

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zza(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzg:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;

    invoke-interface {p0, p1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoaderHelper;->loadModelAtPath(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->zzc(Ljava/io/File;)V

    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const/16 p1, 0xe

    const-string v1, "Failed to load newly downloaded model."

    .line 3
    invoke-direct {p0, v1, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public getRemoteModel()Lcom/google/mlkit/common/model/RemoteModel;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    return-object p0
.end method

.method public declared-synchronized load()Ljava/nio/MappedByteBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "Try to load newly downloaded model file."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzi:Z

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 2
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 3
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelHash()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v5, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 5
    invoke-virtual {v5}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 6
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    goto/16 :goto_1

    :cond_1
    sget-object v6, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download Status code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RemoteModelLoader"

    .line 9
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    sget-object v6, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Moved the downloaded model to private folder successfully: "

    const-string v9, "RemoteModelLoader"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 15
    invoke-virtual {v6, v2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->updateLatestModelHashAndType(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->zzd(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "RemoteModelLoader"

    const-string v5, "All old models are deleted."

    .line 17
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzb(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v2

    iget-object v5, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 22
    invoke-virtual {v6, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getFailureReason(Ljava/lang/Long;)I

    move-result v1

    .line 23
    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zze(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;ZI)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 24
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "No new model is downloading."

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zze:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 27
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    :cond_5
    :goto_1
    move-object v5, v4

    :cond_6
    :goto_2
    if-nez v5, :cond_8

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "Loading existing model file."

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    .line 29
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->zzb()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "No existing model file"

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 31
    :cond_7
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zza(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzf:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    new-instance v3, Ljava/io/File;

    .line 33
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->zzc(Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzc:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 34
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->clearLatestModelHash(Lcom/google/mlkit/common/model/RemoteModel;)V

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Failed to load an already downloaded model."

    const/16 v3, 0xe

    .line 35
    invoke-direct {v0, v2, v3, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 36
    :cond_8
    iput-boolean v3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelLoader;->zzi:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 37
    :goto_3
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
