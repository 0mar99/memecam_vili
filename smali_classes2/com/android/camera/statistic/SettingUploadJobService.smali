.class public Lcom/android/camera/statistic/SettingUploadJobService;
.super Landroid/app/job/JobService;
.source "SettingUploadJobService.java"


# static fields
.field public static final JOB_ID:I = 0x10af3e2

.field public static final QUERY_PERIOD:J = 0x5265c00L

.field public static TAG:Ljava/lang/String; = "CameraSettingJob"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleSettingUploadJob(Landroid/content/Context;)V
    .locals 4

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/statistic/SettingUploadJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "scheduleJob(): JobScheduler not supported"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0x10af3e2

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/camera/statistic/SettingUploadJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v2, 0x5265c00

    .line 7
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-gtz p0, :cond_1

    .line 11
    sget-object p0, Lcom/android/camera/statistic/SettingUploadJobService;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "scheduleJob failed: job id is %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/app/job/JobParameters;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/statistic/SettingUploadJobService;->TAG:Ljava/lang/String;

    const-string v1, "[WTP]onStartJob: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_last_setting_update_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 5
    new-instance v0, Lcom/android/camera/statistic/SettingRecord;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/statistic/SettingRecord;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->startRecord()V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->endRecord()V

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 9
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/SettingUploadJobService;->scheduleSettingUploadJob(Landroid/content/Context;)V

    .line 10
    sget-object p0, Lcom/android/camera/statistic/SettingUploadJobService;->TAG:Ljava/lang/String;

    const-string p1, "[WTP]onStartJob: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/statistic/SettingUploadJobService;->TAG:Ljava/lang/String;

    const-string v1, "Analysis job is scheduled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00Oo0/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/o00Oo0/OooO0o0;-><init>(Lcom/android/camera/statistic/SettingUploadJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
