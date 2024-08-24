.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final arg$2:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-static {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$logAndUpdateState$2(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
