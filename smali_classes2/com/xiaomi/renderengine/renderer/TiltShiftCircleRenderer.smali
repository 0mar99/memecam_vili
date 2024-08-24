.class public Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "TiltShiftCircleRenderer.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uMaskAlpha; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nfloat getDistance(vec2 position, float cx, float cy, float a, float b) { \n    float d = (position.x-cx)*(position.x-cx) / a / a + \n              (position.y-cy)*(position.y-cy) / b / b; \n    return d; \n} \nvoid main() { \n    float maxTransition = 0.4; \n    float ratio = 1.0; \n    vec4 maskColor = vec4(1.0, 1.0, 1.0, 1.0); \n    float maskRatio = 0.0; \n    float  a = (uEffectRect.z - uEffectRect.x) / 2.0; \n    float  b = (uEffectRect.w - uEffectRect.y) / 2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0; \n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float transition = min(maxTransition/a, maxTransition/b); \n    float d_clear = getDistance(vTexCoord, cx, cy, a, b); \n    if (d_clear <= 1.0) { \n        ratio = 0.0; \n    } else { \n        float d_transition = getDistance(vTexCoord, cx, cy, a*(1.0+transition), b*(1.0+transition)); \n        if (d_transition <= 1.0) { \n            float r1 = sqrt(d_clear), r2 = sqrt(d_transition); \n            ratio = (r1 - 1.0) / (r1 / r2 - 1.0); \n        } \n    } \n    if (uInvertRect == 0) { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - (1.0-ratio) * (1.0-ratio); \n        } else { \n            maskRatio = 1.0; \n        } \n    } else { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - ratio*ratio; \n        } else { \n            maskRatio = 0.0; \n        } \n    } \n    vec4 originColor = texture2D(sTexture, vTexCoord); \n    maskRatio = maskRatio * 0.9 * uMaskAlpha; \n    gl_FragColor = originColor*(1.0-maskRatio) + maskColor*maskRatio; \n} \n"

.field public static final TAG:Ljava/lang/String; = "TiltShiftCircleRenderer"

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mPreviewEffectRect:[F

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformAlphaH:I

.field public mUniformEffectRectH:I

.field public mUniformInvertRectH:I

.field public mUniformMVPMatrixH:I

.field public mUniformMaskAlphaH:I

.field public mUniformSTMatrixH:I

.field public mUniformStepH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

.field public mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->TEXTURES:[F

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
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mPreviewEffectRect:[F

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 5
    new-instance v0, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    .line 6
    new-instance v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    invoke-static {v0}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getEffectRect()[F
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iget-object v0, v0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mPreviewEffectRect:[F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    aput v6, v5, v4

    .line 3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, v5, v3

    .line 4
    iget v3, v0, Landroid/graphics/RectF;->right:F

    aput v3, v5, v2

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    aput v0, v5, v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mPreviewEffectRect:[F

    const/4 v5, 0x0

    aput v5, v0, v4

    .line 7
    aput v5, v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    aput v3, v0, v2

    .line 9
    aput v3, v0, v1

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mPreviewEffectRect:[F

    return-object p0
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uMaskAlpha; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nfloat getDistance(vec2 position, float cx, float cy, float a, float b) { \n    float d = (position.x-cx)*(position.x-cx) / a / a + \n              (position.y-cy)*(position.y-cy) / b / b; \n    return d; \n} \nvoid main() { \n    float maxTransition = 0.4; \n    float ratio = 1.0; \n    vec4 maskColor = vec4(1.0, 1.0, 1.0, 1.0); \n    float maskRatio = 0.0; \n    float  a = (uEffectRect.z - uEffectRect.x) / 2.0; \n    float  b = (uEffectRect.w - uEffectRect.y) / 2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0; \n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float transition = min(maxTransition/a, maxTransition/b); \n    float d_clear = getDistance(vTexCoord, cx, cy, a, b); \n    if (d_clear <= 1.0) { \n        ratio = 0.0; \n    } else { \n        float d_transition = getDistance(vTexCoord, cx, cy, a*(1.0+transition), b*(1.0+transition)); \n        if (d_transition <= 1.0) { \n            float r1 = sqrt(d_clear), r2 = sqrt(d_transition); \n            ratio = (r1 - 1.0) / (r1 / r2 - 1.0); \n        } \n    } \n    if (uInvertRect == 0) { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - (1.0-ratio) * (1.0-ratio); \n        } else { \n            maskRatio = 1.0; \n        } \n    } else { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - ratio*ratio; \n        } else { \n            maskRatio = 0.0; \n        } \n    } \n    vec4 originColor = texture2D(sTexture, vTexCoord); \n    maskRatio = maskRatio * 0.9 * uMaskAlpha; \n    gl_FragColor = originColor*(1.0-maskRatio) + maskColor*maskRatio; \n} \n"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformAlphaH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uMaskAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformMaskAlphaH:I

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformStepH:I

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformInvertRectH:I

    .line 12
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformEffectRectH:I

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mProgram = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V
    .locals 13

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformSTMatrixH:I

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
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformStepH:I

    move/from16 v2, p3

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    move/from16 v6, p4

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 12
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformMaskAlphaH:I

    iget-object v2, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iget v2, v2, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mTiltShiftMaskAlpha:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformInvertRectH:I

    iget-object v2, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iget v2, v2, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mInvertFlag:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 14
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mUniformEffectRectH:I

    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->getEffectRect()[F

    move-result-object v0

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "TiltShiftCircleRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->initShader()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->initAttributePointer()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;->onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "TiltShiftCircleRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 8
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mXEffectRenderer:Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XTiltShiftCircleRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->swapBuffer()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mYEffectRenderer:Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->swapBuffer()V

    .line 5
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    .line 6
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 7
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 13
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 14
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v5}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 15
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 16
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 17
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 18
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 19
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 20
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    .line 21
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
