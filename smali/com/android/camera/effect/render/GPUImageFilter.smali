.class public Lcom/android/camera/effect/render/GPUImageFilter;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"


# instance fields
.field public final mFragmentShader:Ljava/lang/String;

.field public mFrameBufferTextures:[I

.field public mFrameBuffers:[I

.field public mFrameHeight:I

.field public mFrameWidth:I

.field public mGLAttribPosition:I

.field public mGLAttribTextureCoordinate:I

.field public mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field public mGLProgId:I

.field public mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field public mGLUniformTexture:I

.field public mIsInitialized:Z

.field public mOutputHeight:I

.field public mOutputWidth:I

.field public final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mTextureId:I

.field public final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mTextureId:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    .line 4
    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    .line 5
    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameWidth:I

    .line 6
    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameHeight:I

    if-nez p1, :cond_0

    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 7
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 8
    iput-object p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/android/camera/effect/render/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 11
    sget-object p2, Lcom/android/camera/effect/render/TextureRotationUtil;->CUBE:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    sget-object p1, Lcom/android/camera/effect/render/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 13
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/camera/effect/render/TextureRotationUtil;->getRotation(Lcom/android/camera/effect/render/Rotation;ZZ)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    .line 2
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public destroyFrameBuffers()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 6
    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    :cond_1
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameWidth:I

    .line 8
    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameHeight:I

    return-void
.end method

.method public getProgram()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onInit()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->destroyFrameBuffers()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputHeight:I

    return-void
.end method

.method public onDrawArraysAfter()V
    .locals 0

    return-void
.end method

.method public onDrawArraysPre()V
    .locals 0

    return-void
.end method

.method public onDrawFrame(I)I
    .locals 9

    .line 20
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 22
    iget-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    iget v3, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 25
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    iget v3, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    iget-object v8, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 28
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xde1

    if-eq p1, v1, :cond_1

    const v1, 0x84c0

    .line 29
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 30
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 33
    invoke-static {p1, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 34
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 35
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysAfter()V

    .line 37
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget v2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 p2, 0xde1

    if-eq p1, v1, :cond_1

    const p3, 0x84c0

    .line 10
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 14
    invoke-static {p1, v0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysAfter()V

    .line 18
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawFrame(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 1

    .line 19
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mTextureId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameWidth:I

    iget v2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    aget v0, v0, v3

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 7
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget v4, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget v4, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 12
    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 p2, 0xde1

    if-eq p1, v1, :cond_2

    const p3, 0x84c0

    .line 13
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 14
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 17
    invoke-static {p1, v3, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 18
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 19
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysAfter()V

    .line 21
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 22
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 23
    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputWidth:I

    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputHeight:I

    invoke-static {v3, v3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    aget p0, p0, v3

    return p0
.end method

.method public onInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string/jumbo v1, "position"

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    .line 3
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    .line 4
    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public runOnDraw(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public runPendingOnDrawTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
