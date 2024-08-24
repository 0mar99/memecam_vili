.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/xiaomi/renderengine/RenderEngine$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV2_StateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public onFrameAvailable()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->onFrameAvailable(I)V

    const-string p0, "RenderEngineAdapter"

    const-string/jumbo v0, "onFrameAvailable"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameDrawn()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->onFrameDrawn()V

    const-string p0, "RenderEngineAdapter"

    const-string/jumbo v0, "onFrameDrawn"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreviewPixelsRead([BIII)V
    .locals 7

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onPreviewPixelsRead"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    iget-object p4, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mPreviewSaveListener:Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;

    invoke-static {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result p0

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;->save([BIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Z

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onPreviewPixelsRead([BIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$400(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/ui/SimpleGLCanvas;->setSize(II)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSurfaceChanged width:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngineAdapter"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$400(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    new-instance v0, Lcom/android/gallery3d/ui/SimpleGLCanvas;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SimpleGLCanvas;-><init>()V

    invoke-static {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$402(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/gallery3d/ui/SimpleGLCanvas;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    :cond_0
    const-string p0, "RenderEngineAdapter"

    const-string/jumbo v0, "onSurfaceCreated"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
