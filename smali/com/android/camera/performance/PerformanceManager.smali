.class public Lcom/android/camera/performance/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/performance/PerformanceManager$Take;,
        Lcom/android/camera/performance/PerformanceManager$PerformanceListener;
    }
.end annotation


# static fields
.field public static final APP_TRACE_ACTION:Ljava/lang/String; = "com.android.traceur.AppReceiver"

.field public static final CRASH_ISSUE:Ljava/lang/String; = "crash_issue"

.field public static final DUMP_ATRACE_ENABLE:Z

.field public static final DUMP_SYSTRACE_ENABLE:Z

.field public static final DUMP_TRACE_2_SUBMIT_MQS_GAP:I = 0x2710

.field public static final DUMP_TRACE_GAP:I = 0x3a98

.field public static final INTENT_ACTION:Ljava/lang/String; = "ACTION"

.field public static final INTENT_ATRACE_APPS:Ljava/lang/String; = "ATRACE_APPS"

.field public static final INTENT_DELETE_MIN_AGE:Ljava/lang/String; = "INTENT_DELETE_MIN_AGE"

.field public static final INTENT_DELETE_MIN_COUNT:Ljava/lang/String; = "INTENT_DELETE_MIN_COUNT"

.field public static final INTENT_DURATION_MIN:Ljava/lang/String; = "DURATION_MIN"

.field public static final INTENT_FILE_PREFIX:Ljava/lang/String; = "FILE_PREFIX"

.field public static final INTENT_LONG_TRACE:Ljava/lang/String; = "LONG_TRACE"

.field public static final INTENT_MAX_FILE_SIZE_MB:Ljava/lang/String; = "MAX_FILE_SIZE_MB"

.field public static final INTENT_SINGLE_CPU_BUFFER:Ljava/lang/String; = "SINGLE_CPU_BUFFER"

.field public static final INTENT_TAGS:Ljava/lang/String; = "TAGS"

.field public static final LOG_SYSTEM_ALL:I = 0x1

.field public static final LOG_SYSTEM_DISABLE:I = 0x0

.field public static final LOG_SYSTEM_PUSH:I = 0x2

.field public static final LOG_SYSTEM_SUBMIT:I = 0x3

.field public static final LOG_SYSTEM_VALUE:I

.field public static final PERFORMANCE_ISSUE:Ljava/lang/String; = "performance_issue"

.field public static final TAG:Ljava/lang/String; = "PerformanceManager"

.field public static final TRACEUR_PACKAGE:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACE_ACTION:Ljava/lang/String; = "com.android.traceur.DumpReceiver"

.field public static final TRACE_DEL:Ljava/lang/String; = "traceutil_delete"

.field public static final TRACE_DUMP:Ljava/lang/String; = "traceutil_dump"

.field public static final TRACE_START:Ljava/lang/String; = "traceutil_start"

.field public static final TRACE_STOP:Ljava/lang/String; = "traceutil_stop"

.field public static final mAppIntent:Landroid/content/Intent;

.field public static final mDumpIntent:Landroid/content/Intent;

.field public static volatile mPerformance:Lcom/android/camera/performance/PerformanceManager;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mCustomTakeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/performance/PerformanceManager$Take;",
            ">;"
        }
    .end annotation
.end field

.field public final mEventLock:Ljava/lang/Object;

.field public mHandler:Landroid/os/Handler;

.field public volatile mIsDumping:Z

.field public volatile mIsPerfettoDumping:Z

.field public mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

.field public final mLock:Ljava/lang/Object;

.field public mProfilingStartPreview:Z

.field public mSDF:Ljava/text/SimpleDateFormat;

.field public final mTakeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/camera/performance/Action$Event;",
            "Lcom/android/camera/performance/PerformanceManager$Take;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "cam.dump.systrace"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/performance/PerformanceManager;->DUMP_ATRACE_ENABLE:Z

    const-string/jumbo v1, "vendor.camera.sensor.logsystem"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    sput-boolean v3, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/performance/PerformanceManager;->LOG_SYSTEM_VALUE:I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.traceur.AppReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.traceur.DumpReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/performance/PerformanceManager;->mDumpIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mSDF:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dumpPerfettoTrace(Lcom/android/camera/performance/Action$Event;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0oO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0oO;-><init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "already dump Perfetto Trace, ignore this action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private dumpSystraceSingle()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v2, "dumpSystraceSingle start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v2, "setprop persist.vendor.camera.traceGroupsEnable 0x10080"

    .line 5
    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atrace -a com.android.camera -c -b 10240 -t 5 -z --async_start gfx freq sched camera -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "Please do not restart to dump systrace"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private getEvnBaseInfo()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 3
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/performance/PerformanceManager$PerformanceListener;->onHappened()V

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/android/camera/Util;->convertModeToString(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->isHightTempTag()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "[HighTemp]"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v3, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HighTemp] temp value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->getThermalResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p0

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "CameraApp Mode:%s[%d] CameraId:%s "

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mSDF:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/android/camera/performance/PerformanceManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/performance/PerformanceManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {v1}, Lcom/android/camera/performance/PerformanceManager;-><init>()V

    sput-object v1, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    return-object v0
.end method

.method private getRealThreshold(Lcom/android/camera/performance/Action$Event;)J
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/performance/PerformanceManager$1;->$SwitchMap$com$android$camera$performance$Action$Event:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "Undefine event !"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    goto/16 :goto_1

    :pswitch_0
    const-wide/16 p0, 0x1

    goto/16 :goto_1

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b002c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0017

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0028

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 6
    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0027

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 7
    :pswitch_5
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 8
    :pswitch_6
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 9
    :pswitch_7
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0044

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 10
    :pswitch_8
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0043

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 11
    :pswitch_9
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0023

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 12
    :pswitch_a
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0026

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 13
    :pswitch_b
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0025

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 14
    :pswitch_c
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 15
    :pswitch_d
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0035

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 16
    :pswitch_e
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0040

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 17
    :pswitch_f
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 18
    :pswitch_10
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 19
    :pswitch_11
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 20
    :pswitch_12
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0036

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 21
    :pswitch_13
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b003a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 22
    :pswitch_14
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0039

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 23
    :pswitch_15
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0038

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    int-to-long p0, p0

    .line 24
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000OO()F

    move-result v0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    .line 25
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSubTitleInfo(Lcom/android/camera/performance/Action$Event;J)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/performance/PerformanceManager$1;->$SwitchMap$com$android$camera$performance$Action$Event:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "Performance"

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object v4, p3, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->getRealThreshold(Lcom/android/camera/performance/Action$Event;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "[%s] Event: %s takes more than %d"

    invoke-static {p2, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v4, p2, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "[%s] Event: %s Preview pipeline process timeout"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v4, p2, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "[%s] Event: %s SAT algo process timeout"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v4, p2, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "[%s] Event: %s drop 10 frames continuously"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "[%s] Event: %s fps drops below threshold %d fps"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logSystemEnable()Z
    .locals 3

    .line 1
    sget v0, Lcom/android/camera/performance/PerformanceManager;->LOG_SYSTEM_VALUE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static needDumpTrace()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/performance/PerformanceManager;->LOG_SYSTEM_VALUE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/performance/PerformanceManager;->traceStart(Z)V

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/performance/Action$Event;)V
    .locals 3

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    .line 8
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "auto dump trace 2.0 version start perfetto trace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->traceDump(Lcom/android/camera/performance/Action$Event;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0O0;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceSingle stop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -t 5 -z --async_stop gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is no dump systrace before."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 4

    .line 9
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "traceDelete"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "ACTION"

    const-string/jumbo v2, "traceutil_delete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "INTENT_DELETE_MIN_COUNT"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "INTENT_DELETE_MIN_AGE"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 15
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/performance/Action$Event;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_TIMEOUT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "traceDump"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v0, "com.android.traceur"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v0, "ACTION"

    const-string/jumbo v1, "traceutil_dump"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v0, "FILE_PREFIX"

    const-string v1, "MiCam-"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 7
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    .line 2
    sget-object v1, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v2, "com.android.traceur"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ACTION"

    const-string/jumbo v3, "traceutil_start"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TAGS"

    const-string v3, "freq,sched,gfx,camera,input,hal,binder_driver"

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SINGLE_CPU_BUFFER"

    const/16 v3, 0x1000

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "max.file.size.mb"

    const/16 v3, 0x28

    .line 7
    invoke-static {v2, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MAX_FILE_SIZE_MB"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ATRACE_APPS"

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "LONG_TRACE"

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "max.duration.min"

    const/16 v2, 0x5a0

    .line 11
    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "DURATION_MIN"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "traceStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    const-string v1, "ACTION"

    const-string/jumbo v2, "traceutil_stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mAppIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public checkDumpSystrace(Lcom/android/camera/performance/Action$Event;J)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/performance/PerformanceManager;->isEventTimeout(Lcom/android/camera/performance/Action$Event;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "performance_issue"

    invoke-static {v0}, Lcom/android/camera/performance/MqsHelper;->checkEventRepeat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->dumpTrace(Lcom/android/camera/performance/Action$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->logSystemEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/performance/PerformanceManager;->getEvnBaseInfo()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/performance/PerformanceManager;->getSubTitleInfo(Lcom/android/camera/performance/Action$Event;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0oo;

    invoke-direct {p2, v0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0oo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public dropAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public varargs dropEvent([Lcom/android/camera/performance/Action$Event;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpSystraceStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -z --async_start gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "Please do not start to dump systrace when duration dumping"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "please execute command: adb shell setprop cam.dump.systrace true. Kill and restart this app"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dumpSystraceStop(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -z --async_stop gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is no dump systrace before."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "Please execute command: adb shell setprop cam.dump.systrace true. Kill and restart this app"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dumpTrace(Lcom/android/camera/performance/Action$Event;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "checkDumpSystrace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->dumpPerfettoTrace(Lcom/android/camera/performance/Action$Event;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endAction(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/performance/PerformanceManager$Take;

    if-eqz v4, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 5
    invoke-virtual {v4}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v0

    .line 6
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "Action: %s has never call startAction before"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method public varargs endAction([Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 11
    invoke-static {v4, v5}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 12
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/performance/PerformanceManager$Take;

    if-eqz v6, :cond_2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 14
    invoke-virtual {v6}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    .line 15
    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_2
    sget-object v6, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "Action %s has never call startAction before"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v7, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCaptureEvent(Lcom/android/camera/performance/CaptureStatus;)Lcom/android/camera/performance/Action$Event;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/performance/CaptureStatus;->isFrontCamera()Z

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/performance/CaptureStatus;->getModeIndex()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/performance/CaptureStatus;->isNeedFlash()Z

    move-result v1

    const/16 v2, 0xab

    if-eq v0, v2, :cond_b

    const/16 v2, 0xad

    if-eq v0, v2, :cond_9

    const/16 v2, 0xaf

    if-eq v0, v2, :cond_8

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/performance/CaptureStatus;->isHdrOn()Z

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/performance/CaptureStatus;->isCaptureNightSE()Z

    move-result p1

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    .line 9
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_UW_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_UW_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_2

    .line 11
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_5X_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    if-eqz v2, :cond_3

    .line 12
    sget-object p0, Lcom/android/camera/performance/Action$Event;->FRONT_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p0, Lcom/android/camera/performance/Action$Event;->FRONT_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 14
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 15
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_FLASH_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 16
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_NIGHT_SE_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 17
    :cond_7
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 18
    :cond_8
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_SR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_9
    if-eqz p0, :cond_a

    .line 19
    sget-object p0, Lcom/android/camera/performance/Action$Event;->FRONT_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 20
    :cond_a
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    :cond_b
    if-eqz p0, :cond_c

    .line 21
    sget-object p0, Lcom/android/camera/performance/Action$Event;->FRONT_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    goto :goto_0

    .line 22
    :cond_c
    sget-object p0, Lcom/android/camera/performance/Action$Event;->REAR_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    :goto_0
    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/MIUI/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/performance/PerformanceManager;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".trace"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAction(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->logSystemEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CAM_Performance"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mWorkThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public isEventTimeout(Lcom/android/camera/performance/Action$Event;J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p1, "No context to get the configuration"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->getRealThreshold(Lcom/android/camera/performance/Action$Event;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const/4 v0, 0x1

    if-ltz p0, :cond_1

    cmp-long p0, p2, v2

    if-lez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    const-string v4, "more"

    goto :goto_1

    :cond_2
    const-string v4, "less"

    .line 4
    :goto_1
    sget-object v5, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v0

    const/4 p1, 0x2

    aput-object v4, v7, p1

    const/4 p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v7, p1

    const-string p1, "Event: %s takes %d is %s than %d"

    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isProfilingStartPreview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean p0, p0, Lcom/android/camera/performance/PerformanceManager;->mProfilingStartPreview:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public varargs resetActionInfo([Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    .line 3
    instance-of v6, v5, Lcom/android/camera/performance/Action$Event;

    if-eqz v6, :cond_0

    .line 4
    iget-object v4, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/performance/PerformanceManager$Take;

    :cond_0
    if-eqz v4, :cond_1

    .line 5
    iget-boolean v5, v4, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/android/camera/performance/PerformanceManager$Take;->resetInfo()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_1
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 10
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 11
    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/performance/PerformanceManager$Take;

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 12
    iget-boolean v5, v3, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/performance/PerformanceManager$Take;->resetInfo()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setPerformanceListener(Lcom/android/camera/performance/PerformanceManager$PerformanceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

    return-void
.end method

.method public setProfilingStartPreview(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager;->mProfilingStartPreview:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startAction(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public varargs startAction([Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 11
    invoke-static {v5, v6}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 12
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {v5, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    new-instance v7, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v7, p0, v5, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startEvent(Lcom/android/camera/performance/Action$Event;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Event: %s start"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;J)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopEvent()J
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/performance/Action$Event;

    if-eqz v8, :cond_0

    .line 6
    iget-object v9, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/performance/PerformanceManager$Take;

    .line 7
    iget-boolean v10, v9, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v10, :cond_0

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v9, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 10
    invoke-virtual {v9}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v6

    .line 11
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/camera/performance/PerformanceManager;->checkDumpSystrace(Lcom/android/camera/performance/Action$Event;J)V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v6, v4

    if-nez p0, :cond_2

    .line 13
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignore this stop event, there is no event in start status."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-wide v6

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public varargs stopEvent([Lcom/android/camera/performance/Action$Event;)J
    .locals 11

    .line 15
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, p1, v5

    if-eqz v6, :cond_1

    .line 17
    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/performance/PerformanceManager$Take;

    iget-boolean v7, v7, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v7, :cond_0

    .line 18
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 20
    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/performance/PerformanceManager$Take;

    .line 21
    invoke-virtual {v7, v3, v4}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 22
    invoke-virtual {v7}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v3

    .line 23
    invoke-virtual {p0, v6, v3, v4}, Lcom/android/camera/performance/PerformanceManager;->checkDumpSystrace(Lcom/android/camera/performance/Action$Event;J)V

    goto :goto_1

    .line 24
    :cond_0
    sget-object v7, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Event: %s has no start time, ignore this stop event as take 0 ms"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_2
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public traceDelete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO00o;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "not allow traceDelete"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceDump(Lcom/android/camera/performance/Action$Event;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;-><init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "not allow traceDump"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceStart(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "traceStart"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0OO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0OO;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "not allow traceStart"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceStop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->needDumpTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0Oo;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    sget-object p0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "not allow traceStop"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
