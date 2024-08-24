.class public Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GLFrameBuffer"


# instance fields
.field public mFbo:I

.field public mHeight:I

.field public mTex:I

.field public mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->initFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public getFrameBufferId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    return p0
.end method

.method public getFrameBufferTextureId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mWidth:I

    return p0
.end method

.method public initFramebuffer(II)V
    .locals 15

    move-object v0, p0

    move/from16 v4, p1

    .line 1
    iput v4, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mWidth:I

    move/from16 v5, p2

    .line 2
    iput v5, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mHeight:I

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v12, 0x0

    .line 3
    invoke-static {v10, v11, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 4
    aget v1, v11, v12

    const-string v13, "GLFrameBuffer"

    invoke-static {v1, v13}, Lcom/android/camera/debug/GpuMonitor;->traceGenTexture(ILjava/lang/String;)V

    const v1, 0x84c0

    .line 5
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    aget v1, v11, v12

    const/16 v14, 0xde1

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0x2801

    .line 7
    invoke-static {v14, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 8
    invoke-static {v14, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v1, 0x812f

    const/16 v2, 0x2802

    .line 9
    invoke-static {v14, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 10
    invoke-static {v14, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    .line 11
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 12
    aget v1, v11, v12

    iput v1, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    new-array v1, v10, [I

    .line 13
    invoke-static {v10, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 14
    aget v2, v1, v12

    invoke-static {v2, v13}, Lcom/android/camera/debug/GpuMonitor;->traceGenFramebuffer(ILjava/lang/String;)V

    .line 15
    aget v2, v1, v12

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 16
    aget v1, v1, v12

    iput v1, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    .line 17
    aget v0, v11, v12

    const v1, 0x8ce0

    invoke-static {v3, v1, v14, v0, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 18
    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 19
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framebuffer is not ready("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget v2, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    aget v1, v1, v3

    const-string v2, "GLFrameBuffer"

    invoke-static {v1, v2}, Lcom/android/camera/debug/GpuMonitor;->traceDeleteTexture(ILjava/lang/String;)V

    new-array v1, v0, [I

    .line 4
    iget v4, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    aput v4, v1, v3

    .line 5
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 6
    aget v0, v1, v3

    invoke-static {v0, v2}, Lcom/android/camera/debug/GpuMonitor;->traceDeleteFramebuffer(ILjava/lang/String;)V

    .line 7
    iput v3, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    .line 8
    iput v3, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    return-void
.end method
