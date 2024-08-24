.class public final Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;
.super Ljava/lang/Object;
.source "TransportRuntime_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/TransportRuntime;",
        ">;"
    }
.end annotation


# instance fields
.field public final eventClockProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field public final initializerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public final schedulerProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field public final uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field public final uptimeClockProvider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
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
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/Scheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->eventClockProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uptimeClockProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->schedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->initializerProvider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method

.method public static create(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/Scheduler;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
            ">;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V

    return-object v6
.end method

.method public static newInstance(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/TransportRuntime;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->eventClockProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/time/Clock;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uptimeClockProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v1}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/time/Clock;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->schedulerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v2}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uploaderProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {v3}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->initializerProvider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->newInstance(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->get()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p0

    return-object p0
.end method
