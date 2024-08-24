.class public final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.super Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.source "DaggerTransportRuntimeComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;
    }
.end annotation


# instance fields
.field public configProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public creationContextFactoryProvider:LOooO0Oo/OooO00o/OooO0OO;

.field public defaultSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;",
            ">;"
        }
    .end annotation
.end field

.field public executorProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public metadataBackendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

.field public sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;",
            ">;"
        }
    .end annotation
.end field

.field public schemaManagerProvider:LOooO0Oo/OooO00o/OooO0OO;

.field public setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public transportRuntimeProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/TransportRuntime;",
            ">;"
        }
    .end annotation
.end field

.field public uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field public workInitializerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;-><init>(Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$1;)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->create()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->creationContextFactoryProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 4
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 5
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;->create()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_SchemaVersionFactory;->create()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_SchemaVersionFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->schemaManagerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 6
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory;->create()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->schemaManagerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 7
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;->create(LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->configProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 8
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 9
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {v0, v1, p1, v2, v2}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->defaultSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 10
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 11
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {p1, v0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workInitializerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->create()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->defaultSchedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workInitializerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method


# virtual methods
.method public getEventStore()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    return-object p0
.end method

.method public getTransportRuntime()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    return-object p0
.end method
