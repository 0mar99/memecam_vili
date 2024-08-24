.class public Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/device/callable/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    const/16 v0, 0xe1

    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    const/16 v0, 0xe7

    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0o0(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 6
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClosed: cache removed: cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 8
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0Oo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0Oo;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->onCameraDisconnected()V

    .line 6
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    .line 7
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    .line 8
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->close(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsClosing:Z

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 10
    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 11
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 12
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnected: cache removed: cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, p2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 6
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->onCameraError()V

    .line 7
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    .line 8
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    .line 9
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v5}, Lcom/android/camera2/Camera2Proxy;->close(I)Z

    .line 10
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 11
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 12
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onError: cache removed: cid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: opening = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", retryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v3}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 17
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;

    invoke-direct {v1, p0, p1, p2}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0OO;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpened: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v1, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraOpened2createCaptureSession@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 6
    iget-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 7
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but camera has been released"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0oO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0oO;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_0
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 12
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v2, v4}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$102(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;I)I

    .line 13
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_1

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 15
    :cond_1
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_2

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but camera capabilities is null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 18
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_2
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 21
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 22
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpened: already cached: cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->setCurrentOpenedCameraId(I)V

    .line 24
    new-instance v2, Lcom/android/camera2/MiCamera2;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 26
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera2/MiCamera2;-><init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 27
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0O0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
