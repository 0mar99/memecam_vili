.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field private final synthetic OooO0O0:Landroid/hardware/camera2/CameraDevice;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO0O0:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object v1, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO0O0:Landroid/hardware/camera2/CameraDevice;

    iget p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO00o(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method
