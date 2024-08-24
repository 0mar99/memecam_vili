.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;
.super Ljava/lang/Object;
.source "Uploader_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
        ">;"
    }
.end annotation


# instance fields
.field public final backendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/backends/BackendRegistry;",
            ">;"
        }
    .end annotation
.end field

.field public final clockProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final eventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;",
            ">;"
        }
    .end annotation
.end field

.field public final executorProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final guardProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;",
            ">;"
        }
    .end annotation
.end field

.field public final workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Landroid/content/Context;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/backends/BackendRegistry;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->contextProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->backendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->eventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 7
    iput-object p6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->guardProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 8
    iput-object p7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->clockProvider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method

.method public static create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Landroid/content/Context;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/backends/BackendRegistry;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;-><init>(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->contextProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->backendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->eventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->guardProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->clockProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-static/range {v1 .. v7}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-result-object p0

    return-object p0
.end method
