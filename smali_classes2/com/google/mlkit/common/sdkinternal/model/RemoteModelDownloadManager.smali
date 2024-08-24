.class public Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field public static final zzb:Ljava/util/Map;


# instance fields
.field public final zzc:Landroid/util/LongSparseArray;

.field public final zzd:Landroid/util/LongSparseArray;

.field public final zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

.field public final zzf:Landroid/app/DownloadManager;

.field public final zzg:Lcom/google/mlkit/common/model/RemoteModel;

.field public final zzh:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

.field public final zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field public final zzk:Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

.field public final zzl:Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;

.field public final zzm:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

.field public zzn:Lcom/google/mlkit/common/model/DownloadConditions;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;Lcom/google/android/gms/internal/mlkit_common/zzpn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzc:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzd:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzh:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    iput-object p6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p6, "ModelDownloadManager"

    const-string v0, "Download manager service is not available in the service."

    .line 5
    invoke-virtual {p2, p6, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk:Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    .line 6
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzl:Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzm:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;)Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;
    .locals 10

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzb:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "common"

    new-instance v9, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/zzpy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzpn;

    move-result-object v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;Lcom/google/android/gms/internal/mlkit_common/zzpn;)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {p0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static bridge synthetic zza(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzc:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzd:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method

.method public static bridge synthetic zzd(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzl(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;)Lcom/google/mlkit/common/model/RemoteModel;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;)Lcom/google/android/gms/internal/mlkit_common/zzpn;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    return-object p0
.end method

.method private final zzj(J)Lcom/google/android/gms/tasks/Task;
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzm(J)Lcom/google/mlkit/common/sdkinternal/model/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 2
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 3
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk(J)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzk(J)Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzd:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzd:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzl(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    :cond_1
    :goto_0
    const/16 p0, 0xd

    const-string p1, "Model downloading failed"

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "reason"

    .line 4
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    const/16 p0, 0x65

    const-string p1, "Model downloading failed due to insufficient space on the device."

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model downloading failed due to error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from Android DownloadManager"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 8
    invoke-direct {v0, p1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final declared-synchronized zzm(J)Lcom/google/mlkit/common/sdkinternal/model/zzd;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzc:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/model/zzd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/zzd;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk(J)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/common/sdkinternal/model/zzd;-><init>(Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;JLcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/mlkit/common/sdkinternal/model/zzc;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzc:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzn(Landroid/app/DownloadManager$Request;Lcom/google/mlkit/common/sdkinternal/ModelInfo;)Ljava/lang/Long;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule a new downloading task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModelDownloadManager"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->setDownloadingModelInfo(JLcom/google/mlkit/common/sdkinternal/ModelInfo;)V

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    const/4 v6, 0x0

    .line 5
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 6
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzo(Lcom/google/mlkit/common/sdkinternal/ModelInfo;Lcom/google/mlkit/common/model/DownloadConditions;)Ljava/lang/Long;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadConditions can not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getDownloadingModelHash(Lcom/google/mlkit/common/model/RemoteModel;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    :cond_1
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "ModelDownloadManager"

    const-string v0, "New model is already in downloading, do nothing."

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, "Need to download a new model."

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    .line 14
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk:Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    .line 15
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelNameForPersist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->modelExistsLocally(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "ModelDownloadManager"

    const-string v3, "Model update is enabled and have a previous downloaded model, use download condition"

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v5

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    const/4 v8, 0x0

    .line 19
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 20
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4

    .line 21
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/DownloadConditions;->isChargingRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 22
    :cond_4
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/DownloadConditions;->isWifiRequired()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    .line 23
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 24
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzn(Landroid/app/DownloadManager$Request;Lcom/google/mlkit/common/sdkinternal/ModelInfo;)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public ensureModelDownloaded()Lcom/google/android/gms/tasks/Task;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    sget-object v5, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v4, 0x0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg()Lcom/google/mlkit/common/sdkinternal/ModelInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    const/16 v3, 0xd

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->modelExistsLocally()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 9
    invoke-direct {p0, v5}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzl(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    :cond_2
    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelHash()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v7

    iget-object v8, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v8}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 18
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzn:Lcom/google/mlkit/common/model/DownloadConditions;

    .line 21
    invoke-direct {p0, v1, v0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzo(Lcom/google/mlkit/common/sdkinternal/ModelInfo;Lcom/google/mlkit/common/model/DownloadConditions;)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    .line 22
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to schedule the download task"

    .line 23
    invoke-direct {p0, v0, v3, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 24
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    .line 25
    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzn:Lcom/google/mlkit/common/model/DownloadConditions;

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzo(Lcom/google/mlkit/common/sdkinternal/ModelInfo;Lcom/google/mlkit/common/model/DownloadConditions;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, "Didn\'t schedule download for the updated model"

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 30
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to ensure the model is downloaded."

    .line 31
    invoke-direct {v0, v1, v3, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getDownloadedFile()Landroid/os/ParcelFileDescriptor;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v3, "Downloaded file is not found"

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadingId()Ljava/lang/Long;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getDownloadingModelId(Lcom/google/mlkit/common/model/RemoteModel;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadingModelHash()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getDownloadingModelHash(Lcom/google/mlkit/common/model/RemoteModel;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadingModelStatusCode()Ljava/lang/Integer;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v0, 0x0

    aput-wide v6, v5, v0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "status"

    .line 4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    .line 5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    monitor-exit p0

    return-object v2

    .line 6
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x10

    if-eq v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 11
    :goto_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v2

    .line 12
    :goto_2
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    const-class v3, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v0

    .line 13
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 14
    :catch_0
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 15
    :cond_5
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFailureReason(Ljava/lang/Long;)I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "reason"

    .line 4
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    .line 5
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public isModelDownloadedAndValid()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    const-string v0, "ModelDownloadManager"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->modelExistsLocally()Z

    move-result v2
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :catch_0
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "Failed to check if the model exist locally."

    .line 3
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelHash()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download Status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    return v4

    :cond_2
    const/16 v0, 0x8

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v4

    .line 11
    :cond_4
    :goto_1
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "No new model is downloading."

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    return v4
.end method

.method public modelExistsLocally()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk:Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v1}, Lcom/google/mlkit/common/model/RemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzh:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->modelExistsLocally(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized removeOrCancelDownload()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel or remove existing downloading task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModelDownloadManager"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzf:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadingModelStatusCode()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzk:Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/model/RemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v2}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->deleteTempFilesInPrivateFolder(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->clearDownloadingModelInfo(Lcom/google/mlkit/common/model/RemoteModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDownloadConditions(Lcom/google/mlkit/common/model/DownloadConditions;)V
    .locals 1

    const-string v0, "DownloadConditions can not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzn:Lcom/google/mlkit/common/model/DownloadConditions;

    return-void
.end method

.method public declared-synchronized updateLatestModelHashAndType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->setLatestModelHash(Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg()Lcom/google/mlkit/common/sdkinternal/ModelInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->modelExistsLocally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 3
    invoke-virtual {v6}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzl:Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelInfoRetrieverInterop;->retrieveRemoteModelInfo(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/mlkit/common/sdkinternal/ModelInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelHash()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v3}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v4}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getIncompatibleModelHash(Lcom/google/mlkit/common/model/RemoteModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v6}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getPreviousAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "ModelDownloadManager"

    const-string v6, "The model is incompatible with TFLite and the app is not upgraded, do not download"

    .line 11
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v7

    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzj:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 12
    invoke-virtual {v4, v6}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->clearLatestModelHash(Lcom/google/mlkit/common/model/RemoteModel;)V

    :cond_3
    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 13
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->getModelHash()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getInstance(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getLatestModelHash(Lcom/google/mlkit/common/model/RemoteModel;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v4, v7

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v0, :cond_6

    xor-int v0, v5, v3

    if-eqz v0, :cond_6

    monitor-exit p0

    return-object v2

    :cond_6
    :try_start_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 16
    invoke-virtual {v1}, Lcom/google/mlkit/common/model/RemoteModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is incompatible with TFLite runtime"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Please include com.google.mlkit:linkfirebase sdk as your dependency when you try to download from Firebase."

    const/16 v2, 0xe

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzi(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, "Model downloaded successfully"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object v4

    iget-object v5, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    iget-object v8, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzh:Lcom/google/mlkit/common/sdkinternal/ModelType;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v7, 0x1

    .line 3
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzlc;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->getDownloadedFile()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "moving downloaded model from external storage to private folder."

    .line 6
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzm:Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->zzg:Lcom/google/mlkit/common/model/RemoteModel;

    .line 7
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileManager;->moveModelToPrivateFolder(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/google/mlkit/common/model/RemoteModel;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/RemoteModelDownloadManager;->removeOrCancelDownload()V

    .line 9
    throw p1
.end method
