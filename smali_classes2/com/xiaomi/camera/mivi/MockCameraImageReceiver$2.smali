.class public Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "MockCameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->createCaptureSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "MockCameraImageReceiver"

    const-string v0, "onConfigureFailed: "

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$000(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$300(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$000(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V

    const-string v0, "MockCameraImageReceiver"

    const-string v1, "onConfigured: "

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$402(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->requestImage()V

    return-void
.end method
