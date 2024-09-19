.class public Lcom/android/camera/module/AmbilightModule$MainHandler;
.super Landroid/os/Handler;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_REPARE:I = 0x6c

.field public static final MSG_FRAME_PROC_DONE:I = 0x64

.field public static final MSG_MAGIC_STAR_DONE:I = 0x66

.field public static final MSG_ON_PAUSE:I = 0x69

.field public static final MSG_POST_PROC_DONE:I = 0x65

.field public static final MSG_POST_PROC_START:I = 0x6a

.field public static final MSG_RECEIVE_EXPOSURE_TIME:I = 0x6b

.field public static final MSG_SEND_VIDEO_FRAME:I = 0x6d

.field public static final MSG_TAKE_SHOT:I = 0x68

.field public static final MSG_UPDATE_DEBUG_INFO:I = 0x67


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field

.field public mReceivedImage:Z

.field public showPreview:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->showPreview:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mReceivedImage:Z

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleDoneMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string p1, "handleDoneMsg module is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/module/AmbilightModule;->access$2000(Lcom/android/camera/module/AmbilightModule;[B)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$2100(Lcom/android/camera/module/AmbilightModule;)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->showPreview:Z

    const/4 p0, 0x0

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/module/AmbilightModule;->access$2202(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x41

    const/16 v3, 0x42

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_4

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1900(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/encoder/LiveMediaRecorder;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawAttribute;

    iget-boolean v0, v0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;Z)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz v0, :cond_4

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$100(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/camera/module/AmbilightModule;->access$1702(Lcom/android/camera/module/AmbilightModule;J)J

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1800(Lcom/android/camera/module/AmbilightModule;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mReceivedImage:Z

    if-nez p0, :cond_4

    .line 8
    invoke-static {v0, v2}, Lcom/android/camera/module/AmbilightModule;->access$1802(Lcom/android/camera/module/AmbilightModule;Z)Z

    .line 9
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    goto/16 :goto_0

    :pswitch_2
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule$MainHandler;->isInRendering()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule;->closeCamera()V

    .line 14
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1600(Lcom/android/camera/module/AmbilightModule;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v0, :cond_4

    .line 15
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$700(Lcom/android/camera/module/AmbilightModule;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 16
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1500(Lcom/android/camera/module/AmbilightModule;)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->updateDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 22
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1300(Lcom/android/camera/module/AmbilightModule;)V

    .line 23
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->mReceivedImage:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule$MainHandler;->handleDoneMsg(Landroid/os/Message;)V

    goto :goto_0

    .line 25
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule$MainHandler;->handleDoneMsg(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    if-eqz v0, :cond_4

    .line 26
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$700(Lcom/android/camera/module/AmbilightModule;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule;->handleFrameProcessDone()V

    .line 28
    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->showPreview:Z

    if-nez p1, :cond_4

    .line 29
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 30
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    .line 31
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 32
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1400(Lcom/android/camera/module/AmbilightModule;)V

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->showPreview:Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->enterAutoHibernation()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1388

    .line 35
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->showAutoHibernationTip()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTime()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule$MainHandler;->showPreview:Z

    return p0
.end method
