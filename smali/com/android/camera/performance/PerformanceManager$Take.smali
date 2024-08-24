.class public Lcom/android/camera/performance/PerformanceManager$Take;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/PerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Take"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mCameraId:I

.field public mEndTime:J

.field public mEvent:Lcom/android/camera/performance/Action$Event;

.field public mIsStarting:Z

.field public mModuleIndex:I

.field public mStartTime:J

.field public final synthetic this$0:Lcom/android/camera/performance/PerformanceManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object p1, Lcom/android/camera/performance/Action$Event;->UNKNOWN:Lcom/android/camera/performance/Action$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 15
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager$Take;->resetInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V

    .line 21
    iput-wide p3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/android/camera/performance/Action$Event;->UNKNOWN:Lcom/android/camera/performance/Action$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 7
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager$Take;->resetInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V

    .line 18
    iput-wide p3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    return-wide v0
.end method

.method public getEvent()Lcom/android/camera/performance/Action$Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    return-wide v0
.end method

.method public getTakeTime()J
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    :goto_0
    aput-object p0, v4, v3

    const-string p0, "%s is not ended"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-wide v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    iget-wide v7, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v1

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ltz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    .line 6
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v3

    iget v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mModuleIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mCameraId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "Event: %s_%03d_%d takes %d ms"

    .line 7
    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v9, v1, v3

    iget v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mModuleIndex:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mCameraId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "Action: %s_%03d_%d takes %d ms"

    .line 10
    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-wide v1, v5

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    .line 13
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    iget-wide v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v4

    iget-wide v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v7

    const-string p0, "Illegal parameters. Event: %s end time(%d) is smaller than start time(%d)"

    .line 14
    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 15
    :cond_4
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v8, v6, v3

    iget-wide v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v4

    iget-wide v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v7

    const-string p0, "Illegal parameters. Action: %s end time(%d) is smaller than start time(%d)"

    .line 17
    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-wide v1
.end method

.method public isStarting()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return p0
.end method

.method public resetInfo()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mModuleIndex:I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mCameraId:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public setEvent(Lcom/android/camera/performance/Action$Event;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/Action$Event;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager$Take;->resetInfo()V

    return-void
.end method
