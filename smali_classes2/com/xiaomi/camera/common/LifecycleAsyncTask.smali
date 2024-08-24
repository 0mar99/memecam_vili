.class public abstract Lcom/xiaomi/camera/common/LifecycleAsyncTask;
.super Ljava/lang/Object;
.source "LifecycleAsyncTask.java"

# interfaces
.implements Lcom/xiaomi/camera/common/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/camera/common/DefaultLifecycleObserver;"
    }
.end annotation


# static fields
.field public static final STR_MSG_CANNT_EXECUTE:Ljava/lang/String; = "Cannot execute task:"

.field public static final TAG:Ljava/lang/String; = "LifecycleAsyncTask"

.field public static final mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mComposites:Lio/reactivex/disposables/CompositeDisposable;

.field public final mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsForceCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLifecycleRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/Reference<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSourceThreadName:Ljava/lang/String;

.field public volatile mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

.field public mTaskDisposable:Lio/reactivex/disposables/Disposable;

.field public mThreadName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->PENDING:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    .line 3
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mLifecycleRefs:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsForceCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private disposeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mTaskDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->disposeAll()V

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->removeObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    sget-object p1, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->FINISHED:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object p1, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->FINISHED:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    .line 7
    throw p1
.end method

.method private removeObserver()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0O0;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mLifecycleRefs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic OooO00o(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTP]AsyncTask: E. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->beforeExecute()V

    .line 4
    invoke-virtual {p0, p2}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->afterExecute()V

    .line 6
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {v1, p0, p2}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 9
    iget-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsForceCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->disposeAll()V

    .line 11
    sget-object p2, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->FINISHED:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    .line 12
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WTP]AsyncTask: X. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    sget-object p2, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v0, "execute -> An exception was happened when this task was running"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->afterExecute()V

    .line 16
    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p2, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 19
    iget-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsForceCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->disposeAll()V

    .line 21
    sget-object p2, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->FINISHED:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    .line 22
    :cond_1
    throw p1
.end method

.method public synthetic OooO00o([Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public addLifecycleOwner(Landroidx/lifecycle/Lifecycle;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mLifecycleRefs:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-object p0
.end method

.method public afterExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mThreadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mSourceThreadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mSourceThreadName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mThreadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mSourceThreadName:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mThreadName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "# "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final cancel(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    sget-object v1, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->FINISHED:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsForceCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mTaskDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->removeObserver()V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[TParams;)",
            "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string p2, "Cannot execute task: the task had already been canceled."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    sget-object v1, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->PENDING:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 4
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask$1;->$SwitchMap$com$xiaomi$camera$common$LifecycleAsyncTask$Status:[I

    iget-object v1, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Cannot execute task: the task has already been executed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_3
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;->RUNNING:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    iput-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    .line 8
    iput-object p1, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mThreadName:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v1, p0, p1, p2}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mTaskDisposable:Lio/reactivex/disposables/Disposable;

    .line 10
    iget-object p2, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object p0
.end method

.method public final getStatus()Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mStatus:Lcom/xiaomi/camera/common/LifecycleAsyncTask$Status;

    return-object p0
.end method

.method public final isCanceled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isTaskAborted()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "checkTaskNeedContinue -> \u4efb\u52a1\u5df2\u88ab\u53d6\u6d88"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "checkTaskNeedContinue -> \u7ebf\u7a0b\u5df2\u88ab\u4e2d\u65ad"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->TAG:Ljava/lang/String;

    const-string v0, "DefaultLifecycleObserver#onDestroy -> start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->cancel(Z)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs publishProgress([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mIsCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0o0;-><init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->mComposites:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
