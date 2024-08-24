.class public Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;
.super Ljava/lang/Object;
.source "FragmentWideSelfie.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentWideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillPreviewRender"
.end annotation


# instance fields
.field public final mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public final mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

.field public final mHandler:Landroid/os/Handler;

.field public final mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

.field public mTransform:[F

.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    .line 4
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    .line 5
    new-instance p1, Lcom/android/gallery3d/ui/GLPaint;

    .line 6
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {p1, v1, v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>(FI)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;Lcom/android/camera/fragment/FragmentWideSelfie$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "onDrawFrame first frame"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "onDrawFrame: context null"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast v1, Lcom/android/camera/ActivityBase;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "onDrawFrame: renderEngine null"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->getRenderLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 11
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v5

    .line 12
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v6

    .line 13
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 14
    iget-object v7, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v7}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$200(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/TextureView;->getWidth()I

    move-result v7

    .line 15
    iget-object v8, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v8}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$200(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/TextureView;->getHeight()I

    move-result v8

    .line 16
    invoke-interface {v2, v7, v8}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 17
    iget-object v9, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    invoke-virtual {v1, v9}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 18
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v9, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4, v9, v10}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v1

    .line 19
    invoke-interface {v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 20
    iget-object v12, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v7

    int-to-float v1, v8

    iget-object v4, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    move/from16 v16, v1

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->init(FFFFLcom/android/gallery3d/ui/GLPaint;)Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 21
    invoke-interface {v2, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 22
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 23
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$300(Lcom/android/camera/fragment/FragmentWideSelfie;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v1, v11}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$302(Lcom/android/camera/fragment/FragmentWideSelfie;Z)Z

    .line 27
    iget-object v0, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mHandler:Landroid/os/Handler;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooO0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    :try_start_1
    const-string v0, "WideSelfie"

    const-string/jumbo v1, "onDrawFrame: texture or canvas null"

    .line 28
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setPaintColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    return-void
.end method
