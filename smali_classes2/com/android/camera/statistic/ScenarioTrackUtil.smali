.class public Lcom/android/camera/statistic/ScenarioTrackUtil;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;,
        Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScenarioTrackUtil"

.field public static final sStartVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

.field public static final sStopVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

.field public static scenarioSettings:Landroid/os/statistics/E2EScenarioSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    const-string v1, "StartVideoRecordTime"

    invoke-direct {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStartVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    .line 2
    new-instance v0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    const-string v1, "StopVideoRecordTime"

    invoke-direct {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStopVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    .line 3
    :try_start_0
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->scenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioSettings;->setStatisticsMode(I)V

    .line 5
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->scenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioSettings;->setHistoryLimitPerDay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->abortScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    return-void
.end method

.method public static abortScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event start cancel due to scenario is null!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-static {p0, p1}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0, p1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 4

    const-string v0, ""

    const-string/jumbo v1, "track "

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    if-nez v2, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event start cancel due to scenario is null!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-static {v2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    sget-object v2, Lcom/android/camera/statistic/ScenarioTrackUtil;->scenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    invoke-static {v0, v2, p1, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event start failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static finishScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0, p1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->finishScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 2

    const-string/jumbo v0, "track "

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event end cancel, due to scenario is null!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z

    if-nez v1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event end cancel, due to scenario has not started!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-static {v1, p1, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-static {p1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;)V

    :goto_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/android/camera/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event end failed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->abortScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V

    return-void
.end method

.method public static trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->abortScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    return-void
.end method

.method public static trackStartVideoRecordEnd()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStartVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->finishScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static trackStartVideoRecordStart(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/statistics/E2EScenarioPayload;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioPayload;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "cameraId"

    aput-object v2, v1, p0

    const/4 p0, 0x3

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->cameraIdToName(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioPayload;->putValues([Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStartVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-static {p0, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static trackStopVideoRecordEnd()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStopVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->finishScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static trackStopVideoRecordStart(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/statistics/E2EScenarioPayload;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioPayload;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "cameraId"

    aput-object v2, v1, p0

    const/4 p0, 0x3

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->cameraIdToName(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioPayload;->putValues([Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sStopVideoRecordTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-static {p0, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
