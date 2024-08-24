.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/common/BaseModuleCameraManager;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/common/BaseModuleCameraManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;->OooO00o:Lcom/android/camera/module/common/BaseModuleCameraManager;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;->OooO00o:Lcom/android/camera/module/common/BaseModuleCameraManager;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;->OooO0O0:Z

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->OooO00o(ZLcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
