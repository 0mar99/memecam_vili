.class public Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "BaseBlurEffectRenderer.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec2 delta = step; \n    int radius = 10; \n    float factor = 1.0 / (float(radius + 1) * float(radius + 1)); \n    float weight = factor * float(radius + 1); \n    vec3 sum = texture2D(sTexture, vTexCoord).rgb * weight; \n    for (int i = 1; i <= radius; ++i) { \n        weight -= factor; \n        sum += (texture2D(sTexture, vTexCoord + delta).rgb + texture2D(sTexture, vTexCoord - delta).rgb) * weight; \n        delta += step; \n    } \n    gl_FragColor = vec4(sum, 1.0);  \n}"

.field public static final TAG:Ljava/lang/String; = "BaseBlurEffectRenderer"

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformAlphaH:I

.field public mUniformMVPMatrixH:I

.field public mUniformSTMatrixH:I

.field public mUniformStepH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    .line 3
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec2 delta = step; \n    int radius = 10; \n    float factor = 1.0 / (float(radius + 1) * float(radius + 1)); \n    float weight = factor * float(radius + 1); \n    vec3 sum = texture2D(sTexture, vTexCoord).rgb * weight; \n    for (int i = 1; i <= radius; ++i) { \n        weight -= factor; \n        sum += (texture2D(sTexture, vTexCoord + delta).rgb + texture2D(sTexture, vTexCoord - delta).rgb) * weight; \n        delta += step; \n    } \n    gl_FragColor = vec4(sum, 1.0);  \n}"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformAlphaH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformStepH:I

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V
    .locals 13

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformSTMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getTexMatrix()[F

    move-result-object v2

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move v2, p1

    .line 8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v0, v0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "BaseBlurEffectRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->initShader()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->initAttributePointer()V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "BaseBlurEffectRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    :cond_1
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    .line 2
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 3
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 9
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 10
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v5}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 12
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 13
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    .line 17
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
