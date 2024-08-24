.class public Lcom/xiaomi/renderengine/renderer/AnimationRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "AnimationRenderer.java"


# static fields
.field public static final CAPTURE_COLOR_ALPHA:F = 0.7f

.field public static final JUMP_GALLERY_DURATION_MS:I = 0x7d0

.field public static final NORMAL_CAPTURE_DURATION_MS:I = 0x3c

.field public static final RECORD_CAPTURE_DURATION_MS:I = 0x1e

.field public static final SWITCH_DURATION_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "AnimationRenderer"


# instance fields
.field public mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

.field public mAnimRenderCount:I

.field public mAnimStartTime:J

.field public mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

.field public mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

.field public mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

.field public mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

.field public mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    .line 4
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    .line 6
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    .line 7
    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    .line 8
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    .line 9
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    return-void
.end method

.method private copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getExternalRenderer()Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->getFrameAvailableFlag()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->isNeedCopyPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8d40

    .line 4
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v1

    .line 6
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    .line 7
    invoke-interface {v0, v1, v3, v4}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->onDrawFrame(IIZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    .line 9
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v5

    .line 10
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v6

    .line 11
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v7

    iget-object v8, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    new-instance v9, Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result p2

    invoke-direct {v9, v2, v2, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    .line 13
    invoke-virtual/range {v3 .. v10}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    :cond_1
    return-void
.end method

.method private initDoubleBuffer(II)V
    .locals 5

    .line 1
    div-int/lit8 p1, p1, 0x4

    .line 2
    div-int/lit8 p2, p2, 0x4

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const-string v1, "x"

    const-string v2, "AnimationRenderer"

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new double buffer, size:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, p2

    mul-float/2addr v4, v3

    int-to-float v3, p1

    div-float/2addr v4, v3

    sub-float/2addr v4, v0

    .line 7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 9
    new-instance v0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resize double buffer to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private jumpGalleryAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "switchModeAnimRender done"

    .line 2
    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpGalleryAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private lastFrameBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 7
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 8
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 9
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v4

    .line 10
    invoke-static {v2, v3, v4}, Lcom/xiaomi/renderengine/gl/GLUtils;->createBitmapFromFbo(III)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastFrameBlurRender renderParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationRenderer"

    .line 13
    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private nightCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c

    .line 3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    const-string v3, "AnimationRenderer"

    if-lez v2, :cond_1

    const-string p0, "nightCaptureAnimRender done"

    .line 4
    invoke-static {v3, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    iget v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    .line 8
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v6, v8

    .line 9
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    goto :goto_1

    :cond_3
    const v2, 0x3f333333    # 0.7f

    :goto_1
    long-to-float v6, v6

    mul-float/2addr v6, v2

    long-to-float v0, v0

    div-float/2addr v6, v0

    .line 10
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v2, v0

    .line 11
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nightCaptureAnimRender renderParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " darkLevel="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v3, p0}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private normalCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "normalCaptureAnimRender done"

    .line 2
    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/16 v4, 0xb2

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normalCaptureAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private onceBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 8
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 9
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 10
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    return-void
.end method

.method private realtimeBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private recordCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string p0, "AnimationRenderer"

    const-string p1, "normalCaptureAnimRender done"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/high16 v1, -0x1000000

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 5
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private switchModeAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "switchModeAnimRender done"

    .line 2
    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchModeAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "AnimationRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 6
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    iget v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    const-string v2, "AnimationRenderer"

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttributeUpdate exception, unsupported attr type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    const-string p0, "onAttributeUpdate"

    .line 4
    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "AnimationRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 6
    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 9
    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 12
    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 15
    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    :cond_4
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(II)V

    .line 3
    :cond_0
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mAnimType:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->recordCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->jumpGalleryAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->realtimeBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->lastFrameBlurRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->nightCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->normalCaptureAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    goto :goto_0

    .line 10
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->switchModeAnimRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result p1

    .line 11
    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnimation time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnimationRenderer"

    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
