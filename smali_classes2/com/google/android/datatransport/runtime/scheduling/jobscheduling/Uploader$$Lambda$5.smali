.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final arg$3:I


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$2:Lcom/google/android/datatransport/runtime/TransportContext;

    iget p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5;->arg$3:I

    invoke-static {v0, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$upload$0(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
