.class public Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "MockCameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->openCamera()V
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
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    const-string p1, "MockCameraImageReceiver"

    const-string v0, "onDisconnected: "

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$200(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$300(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$100(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->releaseAll()V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$000(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MockCameraImageReceiver"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$200(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$300(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$100(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->releaseAll()V

    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$000(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->access$102(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const-string p1, "MockCameraImageReceiver"

    const-string v0, "onOpened: "

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->createCaptureSession()V

    return-void
.end method
