.class public Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;
.super Ljava/lang/Object;
.source "FragmentPanorama.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillPreviewRender"
.end annotation


# instance fields
.field public final mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mTransform:[F

.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentPanorama;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;Lcom/android/camera/fragment/FragmentPanorama$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const-string v0, "FragmentPanorama"

    const-string/jumbo v1, "onDrawFrame first frame"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$900(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentPanorama;->access$1000(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "FragmentPanorama"

    const-string/jumbo p1, "onDrawFrame: context null"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/android/camera/ActivityBase;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "FragmentPanorama"

    const-string/jumbo p1, "onDrawFrame: renderEngine null"

    .line 5
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getRenderLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 11
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v9

    .line 12
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v10

    .line 13
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    .line 15
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v4}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    .line 16
    invoke-interface {v0, v2, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    invoke-virtual {p1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    .line 19
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$300(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v5

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$400(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    .line 20
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$500(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$600(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v8

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 23
    invoke-interface {v0, v9, v10}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 24
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 25
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$700(Lcom/android/camera/fragment/FragmentPanorama;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$702(Lcom/android/camera/fragment/FragmentPanorama;Z)Z

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$800(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOo0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOo0;-><init>(Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    :try_start_1
    const-string p0, "FragmentPanorama"

    const-string/jumbo p1, "onDrawFrame: texture or canvas null"

    .line 30
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
