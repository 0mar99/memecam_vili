.class public Lcom/xiaomi/renderengine/renderer/PreviewRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "PreviewRenderer.java"


# static fields
.field public static final EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I = 0x3490

.field public static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field public static final EXT_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH:Ljava/lang/String; = "EGL_EXT_gl_colorspace_display_p3_passthrough"

.field public static final KHR_GL_COLOR_SPACE:Ljava/lang/String; = "EGL_KHR_gl_colorspace"

.field public static final TAG:Ljava/lang/String; = "PreviewRenderer"


# instance fields
.field public mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

.field public volatile mHasSurface:Z

.field public mIsWcgMode:Z

.field public mPreviewArea:Landroid/graphics/Rect;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mSurfaceHeight:I

.field public volatile mSurfaceUpdated:Z

.field public mSurfaceWidth:I

.field public mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    .line 4
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 7
    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    return-void
.end method

.method public static checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getWCGWindowSurfaceAttrs()[I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglCore;->getEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v1, 0x3055

    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface.exts: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PreviewRenderer"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 6
    invoke-static {v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWcgCapability(Ljava/util/Set;)I

    move-result v1

    const-string v2, "EGL_KHR_gl_colorspace"

    .line 7
    invoke-static {v2, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    const/4 p0, 0x3

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v2, 0x309d

    aput v2, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x3038

    aput v1, p0, v0

    :cond_1
    return-object p0
.end method

.method public static getWcgCapability(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3490

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface start, updated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PreviewRenderer"

    invoke-static {v4, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    .line 7
    :cond_1
    new-instance v0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    .line 8
    invoke-virtual {v5}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    .line 9
    iget-boolean v7, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mIsWcgMode:Z

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWCGWindowSurfaceAttrs()[I

    move-result-object v1

    :cond_2
    invoke-direct {v0, v5, v6, v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWindowSurface end, cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object p0
.end method

.method private renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 4
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    if-eqz p2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v2, v1, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    iget v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    iget-object v8, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v2, v1, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    iget v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    iget-object v8, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    if-eqz p2, :cond_1

    .line 8
    iget p3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    :cond_1
    return p3

    :cond_2
    const-string p0, "PreviewRenderer"

    const-string p1, "skip preview render, window surface not ready yet!"

    .line 9
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addPreviewSurface(Landroid/view/Surface;IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mIsWcgMode:Z

    if-eq v0, p4, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    .line 3
    iput p3, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    .line 4
    iput-boolean p4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mIsWcgMode:Z

    .line 5
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreviewSurface surface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " width="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isWcgMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewRenderer"

    invoke-static {p2, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    return-void
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "PreviewRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "PreviewRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    .line 6
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_1
    return-void
.end method

.method public onExternalRender(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0, v0, v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->onDrawFrame(IIZ)Z

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    goto :goto_0

    :cond_0
    const-string p0, "PreviewRenderer"

    const-string p1, "skip external preview render, window surface not ready yet!"

    .line 5
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    .line 2
    iget v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mAnimType:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public removePreviewSurface(Landroid/view/Surface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    const-string p0, "PreviewRenderer"

    const-string p1, "removePreviewSurface"

    .line 3
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewAreaParams(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreviewAreaParams "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewMirror(Z)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->startAnimation()V

    :cond_0
    return-void
.end method
