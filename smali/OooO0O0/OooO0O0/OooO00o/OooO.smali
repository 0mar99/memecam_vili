.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;

.field private final synthetic OooO0O0:Lcom/android/camera/module/loader/StartControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/StartControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooO;->OooO00o:Lcom/android/camera/Camera;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooO;->OooO0O0:Lcom/android/camera/module/loader/StartControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO;->OooO00o:Lcom/android/camera/Camera;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooO;->OooO0O0:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->OooO00o(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method
