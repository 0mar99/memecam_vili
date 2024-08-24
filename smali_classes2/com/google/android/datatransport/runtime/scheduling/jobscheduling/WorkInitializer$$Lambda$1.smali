.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1;
.super Ljava/lang/Object;
.source "WorkInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->lambda$ensureContextsScheduled$1(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    return-void
.end method
