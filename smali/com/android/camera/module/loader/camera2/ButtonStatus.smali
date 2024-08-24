.class public Lcom/android/camera/module/loader/camera2/ButtonStatus;
.super Ljava/lang/Object;
.source "ButtonStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;
    }
.end annotation


# static fields
.field public static final FOCUS_STATUS_FOCUSED:I = 0x1

.field public static final FOCUS_STATUS_FOCUSING:I = 0x0

.field public static final STATUS_CANCEL:I = 0x2

.field public static final STATUS_DOWN:I = 0x0

.field public static final STATUS_UP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ButtonStatus"


# instance fields
.field public mCaptureDownTime:J

.field public mCaptureStartTime:J

.field public volatile mFocusStatus:I

.field public volatile mStatus:I

.field public final mStatusRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mFocusStatus:I

    .line 3
    iput-wide p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureDownTime:J

    .line 4
    iput p3, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {p3}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_4

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    new-instance v1, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCaptureDownTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureDownTime:J

    return-wide v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureStartTime:J

    return-wide v0
.end method

.method public declared-synchronized getFocusStatus()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mFocusStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyButtonCancel(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureDownTime:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "ButtonStatus"

    const-string p2, "!!!error notifyButtonCancel: up time does not match down time"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "ButtonStatus"

    const-string/jumbo p2, "notifyButtonCancel: E"

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;

    .line 6
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    iget-object p2, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 10
    iget-object p2, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "ButtonStatus"

    const-string/jumbo p2, "notifyButtonCancel: X"

    .line 12
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyButtonUp(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureDownTime:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "ButtonStatus"

    const-string p2, "!!!error notifyButtonUp: up time does not match down time"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "ButtonStatus"

    const-string/jumbo p2, "notifyButtonUp: E"

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatus:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;

    .line 6
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    iget-object p2, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 10
    iget-object p2, p2, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mStatusRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "ButtonStatus"

    const-string/jumbo p2, "notifyButtonUp: X"

    .line 12
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCaptureStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mCaptureStartTime:J

    return-void
.end method

.method public declared-synchronized setFocusStatus(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus;->mFocusStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
