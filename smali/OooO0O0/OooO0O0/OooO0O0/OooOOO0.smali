.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/LocalParallelService$LocalBinder;

.field private final synthetic OooO0O0:Lcom/xiaomi/engine/PreProcessData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;->OooO00o:Lcom/android/camera/LocalParallelService$LocalBinder;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;->OooO0O0:Lcom/xiaomi/engine/PreProcessData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;->OooO00o:Lcom/android/camera/LocalParallelService$LocalBinder;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;->OooO0O0:Lcom/xiaomi/engine/PreProcessData;

    invoke-static {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallel;->OooO00o(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V

    return-void
.end method
