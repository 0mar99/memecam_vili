.class public Lcom/android/camera/module/AmbilightModule$4;
.super Ljava/lang/Object;
.source "AmbilightModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/AmbilightModule;->startAmbilightShooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAmbilightAutoAeTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AMBILIGHT_AE_EXPOSURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    .line 3
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureProgress: [exposureTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x6b

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "onCaptureStart pictureSize= %s"

    .line 3
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string/jumbo v1, "onPictureTaken"

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$300(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1, p2}, Lcom/android/camera/module/AmbilightModule;->access$202(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$300(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 v1, 0x2

    invoke-static {p1, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO00o(Landroid/media/Image;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/AmbilightModule;->access$302(Lcom/android/camera/module/AmbilightModule;[B)[B

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1, p2}, Lcom/android/camera/module/AmbilightModule;->access$202(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$300(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
