.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/common/LifecycleAsyncTask;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO0OO:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO00o:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    iget-object v1, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO00o;->OooO0OO:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->OooO00o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
