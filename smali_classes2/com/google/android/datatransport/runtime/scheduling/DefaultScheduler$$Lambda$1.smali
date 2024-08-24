.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

.field public final arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final arg$3:Lcom/google/android/datatransport/TransportScheduleCallback;

.field public final arg$4:Lcom/google/android/datatransport/runtime/EventInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/TransportScheduleCallback;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$3:Lcom/google/android/datatransport/TransportScheduleCallback;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$4:Lcom/google/android/datatransport/runtime/EventInternal;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/TransportScheduleCallback;Lcom/google/android/datatransport/runtime/EventInternal;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;-><init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/TransportScheduleCallback;Lcom/google/android/datatransport/runtime/EventInternal;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$3:Lcom/google/android/datatransport/TransportScheduleCallback;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1;->arg$4:Lcom/google/android/datatransport/runtime/EventInternal;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->lambda$schedule$1(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/TransportScheduleCallback;Lcom/google/android/datatransport/runtime/EventInternal;)V

    return-void
.end method
