.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/performance/PerformanceManager;

.field private final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO0o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/performance/PerformanceManager;->OooO00o(Ljava/lang/String;)V

    return-void
.end method
