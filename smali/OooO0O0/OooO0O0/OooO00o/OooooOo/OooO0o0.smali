.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/performance/PerformanceManager;

.field private final synthetic OooO0O0:Lcom/android/camera/performance/Action$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;->OooO0O0:Lcom/android/camera/performance/Action$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o0;->OooO0O0:Lcom/android/camera/performance/Action$Event;

    invoke-virtual {v0, p0}, Lcom/android/camera/performance/PerformanceManager;->OooO0O0(Lcom/android/camera/performance/Action$Event;)V

    return-void
.end method
