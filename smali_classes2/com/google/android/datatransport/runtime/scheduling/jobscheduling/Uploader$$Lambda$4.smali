.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;)Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->cleanUp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
