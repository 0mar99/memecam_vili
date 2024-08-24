.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderEngineV2_ExtRenderer"
.end annotation


# instance fields
.field public mRenderEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/RenderEngineAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public isNeedCopyPreview()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isNeedCopyPreviewFromExternal()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isProcessorReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onDrawFrame(IIZ)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "RenderEngineAdapter"

    const-string p1, "RenderEngineV2_ExtRenderer onDrawFrame fail"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OooO()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-interface {v2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 p0, 0x2

    if-eq v3, p0, :cond_2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getPreviewTransform()[F

    move-result-object p2

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    .line 11
    invoke-interface {v2, p1, p2, p3, p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;[FLandroid/graphics/Rect;Lcom/android/gallery3d/ui/ExtTexture;)Z

    move-result p0

    return p0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 13
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public prepareProcessor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->prepareGL()V

    :cond_0
    return-void
.end method

.method public releaseRenderer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    :cond_0
    return-void
.end method
