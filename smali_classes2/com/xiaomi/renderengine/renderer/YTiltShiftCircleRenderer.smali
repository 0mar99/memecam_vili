.class public Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "YTiltShiftCircleRenderer.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nuniform float uAlpha; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nvec4 gassian(vec2 step) { \n    vec3 sum; \n    float a[6]; \n    a[0] = 0.091; a[1] = 0.091; a[2] = 0.091; a[3] = 0.091; a[4] = 0.091; a[5] = 0.091; \n    vec2 delta = 5.0 * step; \n    sum = texture2D(sTexture, vTexCoord).rgb * a[5]; \n    for (int i = 0; i < 5; i++) { \n        sum += (texture2D(sTexture, vTexCoord - delta).rgb + texture2D(sTexture, vTexCoord + delta).rgb)  * a[i]; \n        delta -= step; \n    } \n    return vec4(sum, 1.0); \n} \nvoid main() { \n    float w = (uEffectRect.z - uEffectRect.x)/2.0; \n    float h = (uEffectRect.w - uEffectRect.y)/2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0;\n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float ratio =  0.0; \n    bool inRange = true;\n    if(w > 2.0*h) { \n        if(isInRectF(vTexCoord, uEffectRect)) { \n             ratio = abs(vTexCoord.y - cy)/h; \n        } else {\n             float d1 = distance(vTexCoord, vec2(cx-w, cy));\n             float d2 = distance(vTexCoord, vec2(cx+w, cy));\n             if (d1 < h) {\n                 ratio = d1/h; \n             } else if (d2 < h) { \n                 ratio = d2/h; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else if (h > 2.0*w) {\n        if(isInRectF(vTexCoord, uEffectRect)) { \n             ratio = abs(vTexCoord.x - cx)/w; \n        } else { \n             float d1 = distance(vTexCoord, vec2(cx, cy-h));\n             float d2 = distance(vTexCoord, vec2(cx, cy+h));\n             if (d1 < w) { \n                 ratio = d1/w; \n             } else if (d2 < w) {\n                 ratio = d2/w; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else {\n        float d = distance(vTexCoord, vec2(cx,cy)); \n        float r = max(w,h); \n        if (d < r) {\n            ratio = d/r; \n        } else { \n            inRange = false; \n            ratio = 0.0; \n        } \n    }\n    if (ratio < 0.5 && uInvertRect == 0) { \n       ratio = 0.0; \n    } \n    if (inRange) { \n        if(uInvertRect != 0) {\n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y*(ratio-1.0)*(ratio-1.0))); \n        } else if (ratio == 0.0) { \n            gl_FragColor = texture2D(sTexture, vTexCoord); \n        } else {\n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y*ratio*ratio*ratio*ratio*ratio)); \n        } \n    } else { \n        if (uInvertRect != 0) { \n            gl_FragColor = texture2D(sTexture, vTexCoord); \n        } else { \n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y)); \n        } \n    } \n    gl_FragColor = gl_FragColor*uAlpha; \n} \n"

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

    sput-object v1, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->TEXTURES:[F

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
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mPreviewEffectRect:[F

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 5
    invoke-static {v0}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

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
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iget-object v0, v0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mPreviewEffectRect:[F

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
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mPreviewEffectRect:[F

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
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mPreviewEffectRect:[F

    return-object p0
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nuniform float uAlpha; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nvec4 gassian(vec2 step) { \n    vec3 sum; \n    float a[6]; \n    a[0] = 0.091; a[1] = 0.091; a[2] = 0.091; a[3] = 0.091; a[4] = 0.091; a[5] = 0.091; \n    vec2 delta = 5.0 * step; \n    sum = texture2D(sTexture, vTexCoord).rgb * a[5]; \n    for (int i = 0; i < 5; i++) { \n        sum += (texture2D(sTexture, vTexCoord - delta).rgb + texture2D(sTexture, vTexCoord + delta).rgb)  * a[i]; \n        delta -= step; \n    } \n    return vec4(sum, 1.0); \n} \nvoid main() { \n    float w = (uEffectRect.z - uEffectRect.x)/2.0; \n    float h = (uEffectRect.w - uEffectRect.y)/2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0;\n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float ratio =  0.0; \n    bool inRange = true;\n    if(w > 2.0*h) { \n        if(isInRectF(vTexCoord, uEffectRect)) { \n             ratio = abs(vTexCoord.y - cy)/h; \n        } else {\n             float d1 = distance(vTexCoord, vec2(cx-w, cy));\n             float d2 = distance(vTexCoord, vec2(cx+w, cy));\n             if (d1 < h) {\n                 ratio = d1/h; \n             } else if (d2 < h) { \n                 ratio = d2/h; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else if (h > 2.0*w) {\n        if(isInRectF(vTexCoord, uEffectRect)) { \n             ratio = abs(vTexCoord.x - cx)/w; \n        } else { \n             float d1 = distance(vTexCoord, vec2(cx, cy-h));\n             float d2 = distance(vTexCoord, vec2(cx, cy+h));\n             if (d1 < w) { \n                 ratio = d1/w; \n             } else if (d2 < w) {\n                 ratio = d2/w; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else {\n        float d = distance(vTexCoord, vec2(cx,cy)); \n        float r = max(w,h); \n        if (d < r) {\n            ratio = d/r; \n        } else { \n            inRange = false; \n            ratio = 0.0; \n        } \n    }\n    if (ratio < 0.5 && uInvertRect == 0) { \n       ratio = 0.0; \n    } \n    if (inRange) { \n        if(uInvertRect != 0) {\n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y*(ratio-1.0)*(ratio-1.0))); \n        } else if (ratio == 0.0) { \n            gl_FragColor = texture2D(sTexture, vTexCoord); \n        } else {\n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y*ratio*ratio*ratio*ratio*ratio)); \n        } \n    } else { \n        if (uInvertRect != 0) { \n            gl_FragColor = texture2D(sTexture, vTexCoord); \n        } else { \n            gl_FragColor = gassian(vec2(0.0, 2.0*uStep.y)); \n        } \n    } \n    gl_FragColor = gl_FragColor*uAlpha; \n} \n"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformAlphaH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformStepH:I

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformInvertRectH:I

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    const-string v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformEffectRectH:I

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;

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
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformSTMatrixH:I

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
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformStepH:I

    move/from16 v2, p3

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    move/from16 v6, p4

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 12
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformInvertRectH:I

    iget-object v2, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iget v2, v2, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mInvertFlag:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 13
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mUniformEffectRectH:I

    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->getEffectRect()[F

    move-result-object v0

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->initShader()V

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->initAttributePointer()V

    return-void
.end method

.method public onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    :cond_0
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
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

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

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 12
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 13
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mAttributeTexCoorH:I

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

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/YTiltShiftCircleRenderer;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
