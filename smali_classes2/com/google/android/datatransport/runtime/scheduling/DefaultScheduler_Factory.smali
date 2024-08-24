.class public final Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;
.super Ljava/lang/Object;
.source "DefaultScheduler_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;",
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
.method public constructor <init>(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/backends/BackendRegistry;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->backendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->eventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->guardProvider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method

.method public static create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/backends/BackendRegistry;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;-><init>(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V

    return-object v6
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->backendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v1}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v2}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->eventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v3}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->guardProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->newInstance(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->get()Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    move-result-object p0

    return-object p0
.end method
