.class public LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;
.super Ljava/lang/Object;
.source "PendingTasks.java"


# instance fields
.field public final OooO00o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o()V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO0OO/OooO00o;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooO00o(JLio/reactivex/Scheduler;Lio/reactivex/functions/Action;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p4}, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o(Lio/reactivex/functions/Action;)V

    .line 2
    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v1}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO00o(Lio/reactivex/functions/Action;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
