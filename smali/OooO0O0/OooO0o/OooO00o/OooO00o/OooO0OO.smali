.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

.field private final synthetic OooO0O0:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;->OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;->OooO0O0:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;->OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;->OooO0O0:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->OooO00o(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method
