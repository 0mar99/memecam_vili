.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

.field private final synthetic OooO0O0:Landroid/hardware/camera2/CameraManager;

.field private final synthetic OooO0OO:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO0O0:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO0OO:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO0O0:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO00o;->OooO0OO:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->OooO00o(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V

    return-void
.end method
