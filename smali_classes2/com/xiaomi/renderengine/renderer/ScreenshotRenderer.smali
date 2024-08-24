.class public Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "ScreenshotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenshotRenderer"


# instance fields
.field public mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

.field public volatile mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    const/16 v0, 0x65

    .line 5
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method

.method private copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V
    .locals 10

    .line 1
    iget-boolean v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 3
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v6

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5, v5, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v1, v2

    move v2, v6

    move v3, p3

    move v4, p4

    move-object v5, v7

    move-object v6, v8

    move v7, p5

    move-object v8, v9

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    .line 7
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v6

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5, v5, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v1, v2

    move v2, v6

    move v3, p3

    move v4, p4

    move-object v5, v7

    move-object v6, v8

    move v7, p5

    move-object v8, v9

    .line 8
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "ScreenshotRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "ScreenshotRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 3
    iget-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;

    .line 5
    iget v4, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 6
    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v4

    .line 7
    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v5

    goto :goto_0

    :cond_0
    const/16 v4, 0x2d0

    .line 8
    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v6}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    .line 9
    :goto_0
    iget v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    if-ne v4, v6, :cond_1

    iget v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    if-eq v5, v6, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 10
    :cond_2
    iget-boolean v6, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsMirror:Z

    if-nez v6, :cond_4

    iget-boolean v6, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsFilmCrop:Z

    if-nez v6, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-boolean v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    if-nez v3, :cond_a

    .line 12
    iget-object v8, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    goto :goto_4

    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    .line 14
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-nez v1, :cond_5

    .line 15
    new-instance v1, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v1, v4, v5}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v1

    if-eq v1, v5, :cond_7

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    .line 18
    new-instance v1, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v1, v4, v5}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 19
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    goto :goto_3

    .line 20
    :cond_8
    iget-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 21
    :goto_3
    iget-boolean v11, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsMirror:Z

    move-object v6, p0

    move-object v7, p1

    move-object v8, v1

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V

    .line 22
    iget-boolean v3, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsFilmCrop:Z

    if-eqz v3, :cond_9

    .line 23
    iput-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 24
    iput v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    .line 25
    iput v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    .line 26
    iget-object v3, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v3, p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->drawMiMovieBlackBridgeEGL(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    .line 27
    :cond_9
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 28
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v1

    .line 29
    :cond_a
    :goto_4
    invoke-static {v1, v4, v5}, Lcom/xiaomi/renderengine/gl/GLUtils;->createBufferFromFbo(III)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget v1, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    invoke-interface {p0, p1, v4, v5, v1}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onPreviewPixelsRead([BIII)V

    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "request processing completed. type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenshotRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0
.end method

.method public requestScreenshot(IZZLcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;

    invoke-direct {v1, p1, p3, p2}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;-><init>(IZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p4, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "requestScreenshot type:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isFilmCrop:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isMirror:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenshotRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
