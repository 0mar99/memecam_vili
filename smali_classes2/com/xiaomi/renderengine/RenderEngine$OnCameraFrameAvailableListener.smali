.class public Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;
.super Ljava/lang/Object;
.source "RenderEngine.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCameraFrameAvailableListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$800(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 3
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v1}, Lcom/xiaomi/renderengine/RenderEngine;->access$900(Lcom/xiaomi/renderengine/RenderEngine;)[F

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$700(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$1000(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p0}, Lcom/xiaomi/renderengine/RenderEngine;->access$1100(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$100(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "RenderEngine"

    if-nez v0, :cond_0

    const-string p0, "skip frame drawing, because gl handler not ready yet!"

    .line 2
    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v2}, Lcom/xiaomi/renderengine/RenderEngine;->access$200(Lcom/xiaomi/renderengine/RenderEngine;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/renderengine/RenderEngine;->access$302(Lcom/xiaomi/renderengine/RenderEngine;I)I

    .line 5
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v2}, Lcom/xiaomi/renderengine/RenderEngine;->access$400(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameAvailable()V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v2, v3}, Lcom/xiaomi/renderengine/RenderEngine;->access$202(Lcom/xiaomi/renderengine/RenderEngine;Z)Z

    const-string v2, "onFrameAvailable first frame arrived."

    .line 7
    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooOO0;-><init>(Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$500(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$500(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;->onRender()V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$600(Lcom/xiaomi/renderengine/RenderEngine;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$700(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$400(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameDrawn()V

    .line 13
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p0, v3}, Lcom/xiaomi/renderengine/RenderEngine;->access$602(Lcom/xiaomi/renderengine/RenderEngine;Z)Z

    :cond_3
    return-void
.end method
