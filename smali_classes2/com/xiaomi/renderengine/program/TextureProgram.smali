.class public Lcom/xiaomi/renderengine/program/TextureProgram;
.super Ljava/lang/Object;
.source "TextureProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/program/TextureProgram$TextureType;
    }
.end annotation


# static fields
.field public static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n}"

.field public static final FRAGMENT_SHADER_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require  \nprecision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nvoid main() \n{ \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n    if (uMixAlpha >= 0.0) { \n       gl_FragColor.a = uMixAlpha; \n    } \n}"

.field public static final OPAQUE_ALPHA:F = 0.95f

.field public static final TAG:Ljava/lang/String; = "TextureProgram"

.field public static final TEXTURES_2D:[F

.field public static final TEXTURES_OES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mProgram:I

.field public mTex2DCoorBuffer:Ljava/nio/FloatBuffer;

.field public mTexOESCoorBuffer:Ljava/nio/FloatBuffer;

.field public mTextureTarget:I

.field public mTextureType:I

.field public mUniformAlphaH:I

.field public mUniformBlendAlphaH:I

.field public mUniformMVPMatrixH:I

.field public mUniformSTMatrixH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/program/TextureProgram;->VERTICES:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaomi/renderengine/program/TextureProgram;->TEXTURES_OES:[F

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/renderengine/program/TextureProgram;->TEXTURES_2D:[F

    return-void

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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    .line 3
    iput p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/renderengine/program/TextureProgram;->initShader()V

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/renderengine/program/TextureProgram;->initAttributePointer()V

    return-void
.end method

.method private initAttributePointer()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/program/TextureProgram;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTexOESCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/program/TextureProgram;->TEXTURES_OES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTexOESCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTex2DCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/xiaomi/renderengine/program/TextureProgram;->TEXTURES_2D:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTex2DCoorBuffer:Ljava/nio/FloatBuffer;

    .line 7
    :cond_2
    iget v1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9
    iget v2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributeTexCoorH:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTexOESCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 10
    :cond_3
    iget v8, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributeTexCoorH:I

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x8

    iget-object v13, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTex2DCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget p0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private initShader()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initShader start, mTextureType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureProgram"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    const-string v2, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string v0, "Texture type Unsupported"

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v0, 0x8d65

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureTarget:I

    const-string v0, "#extension GL_OES_EGL_image_external : require  \nprecision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nvoid main() \n{ \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n    if (uMixAlpha >= 0.0) { \n       gl_FragColor.a = uMixAlpha; \n    } \n}"

    .line 5
    invoke-static {v2, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xde1

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureTarget:I

    const-string v0, "precision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n}"

    .line 7
    invoke-static {v2, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    .line 8
    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformMVPMatrixH:I

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformSTMatrixH:I

    .line 12
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "sTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformTextureH:I

    .line 13
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "uAlpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformAlphaH:I

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "uMixAlpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformBlendAlphaH:I

    .line 15
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributePositionH:I

    .line 16
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    const-string v2, "aTexCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributeTexCoorH:I

    .line 17
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initShader end, mProgram:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/program/TextureProgram;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mProgram = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initShaderValue(I[FLcom/xiaomi/renderengine/gl/GLState;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v0

    .line 2
    invoke-virtual {p3}, Lcom/xiaomi/renderengine/gl/GLState;->getBlendAlpha()F

    move-result v1

    .line 3
    iget v2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/xiaomi/renderengine/gl/GLState;->getTexMatrix()[F

    move-result-object p2

    :goto_0
    const v2, 0x84c0

    .line 4
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    iget v2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureTarget:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x3f733333    # 0.95f

    cmpg-float p1, v0, p1

    const/16 v2, 0xbe2

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v2, 0x303

    .line 8
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 9
    :goto_2
    iget p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformMVPMatrixH:I

    invoke-virtual {p3}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {p1, v3, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    iget p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformSTMatrixH:I

    invoke-static {p1, v3, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 11
    iget p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformTextureH:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 12
    iget p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformAlphaH:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget p0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mUniformBlendAlphaH:I

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method


# virtual methods
.method public draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I

    move-result v0

    return v0
.end method

.method public draw(IIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I
    .locals 1

    .line 2
    invoke-virtual {p8}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    const v0, 0x8d40

    .line 3
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p8}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 5
    :cond_0
    iget p2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p7, :cond_2

    .line 6
    iget p2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mTextureType:I

    const/4 p7, 0x1

    if-ne p2, p7, :cond_1

    .line 7
    array-length p2, p5

    invoke-static {p5, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p5

    .line 8
    invoke-static {p5}, Lcom/xiaomi/renderengine/gl/GLUtils;->updateTransformMatrixForMirror([F)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p8}, Lcom/xiaomi/renderengine/gl/GLState;->getTexMatrix()[F

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->updateTransformMatrixForMirror([F)V

    .line 10
    :cond_2
    :goto_0
    iget p2, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 11
    invoke-direct {p0}, Lcom/xiaomi/renderengine/program/TextureProgram;->initAttributePointer()V

    const/4 p2, 0x0

    .line 12
    invoke-static {p2, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p3, p3

    int-to-float p4, p4

    const/4 p7, 0x0

    .line 13
    invoke-virtual {p8, p7, p3, p7, p4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 14
    iget p3, p6, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p6, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p8, p3, p4, p7}, Lcom/xiaomi/renderengine/gl/GLState;->translate(FFF)V

    .line 15
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-virtual {p8, p3, p4, p6}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 16
    invoke-direct {p0, p1, p5, p8}, Lcom/xiaomi/renderengine/program/TextureProgram;->initShaderValue(I[FLcom/xiaomi/renderengine/gl/GLState;)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 17
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 18
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 19
    iget p1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributePositionH:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 20
    iget p0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 21
    invoke-virtual {p8}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    return p2

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid shader program. shaderProgram:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release mProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureProgram"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/program/TextureProgram;->mProgram:I

    :cond_0
    return-void
.end method
