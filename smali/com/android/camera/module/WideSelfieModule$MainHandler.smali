.class public Lcom/android/camera/module/WideSelfieModule$MainHandler;
.super Landroid/os/Handler;
.source "WideSelfieModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/WideSelfieModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/WideSelfieModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/WideSelfieModule;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onMessage MSG_ABANDON_HANDLER setActivity null"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/16 v3, 0x11

    if-eq v0, v3, :cond_9

    const/16 v1, 0x23

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no consumer for this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setOpenCameraFail(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p1}, Lcom/android/camera/module/WideSelfieModule;->access$100(Lcom/android/camera/module/WideSelfieModule;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    iget-object v1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p1}, Lcom/android/camera/module/WideSelfieModule;->access$200(Lcom/android/camera/module/WideSelfieModule;)Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    move-result-object v0

    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v2, p1, Lcom/android/camera/CameraSize;->width:I

    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v3, p1, Lcom/android/camera/CameraSize;->height:I

    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 14
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v4, p1, Lcom/android/camera/CameraSize;->width:I

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    iget v5, p0, Lcom/android/camera/CameraSize;->height:I

    const-string v1, "1"

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->setCameraParameter(Ljava/lang/String;IIII)V

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setOpenCameraFail(Z)V

    .line 18
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_2

    .line 19
    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v1

    :goto_1
    invoke-static {p0, v0, v2}, Lcom/android/camera/module/WideSelfieModule;->access$300(Lcom/android/camera/module/WideSelfieModule;ZZ)V

    goto :goto_2

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v0, p0

    .line 25
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 26
    :cond_a
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$MainHandler;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_b
    :goto_2
    return-void
.end method
