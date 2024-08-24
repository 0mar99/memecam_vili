.class public Lcom/xiaomi/renderengine/renderer/ZebraRender;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "ZebraRender.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"

.field public static final TAG:Ljava/lang/String;

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mGap:F

.field public mOffset:F

.field public mOverColor:I

.field public mOverExposure:F

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUnderColor:I

.field public mUnderExposure:F

.field public mUniformAlphaH:I

.field public mUniformEffectParameterH:I

.field public mUniformGapH:I

.field public mUniformInvertRectH:I

.field public mUniformMVPMatrixH:I

.field public mUniformOffsetH:I

.field public mUniformOverColorH:I

.field public mUniformOverExposureH:I

.field public mUniformSTMatrixH:I

.field public mUniformSizeH:I

.field public mUniformStepH:I

.field public mUniformTextureH:I

.field public mUniformUnderColorH:I

.field public mUniformUnderExposureH:I

.field public mUniformWidthH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/ZebraRender;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TEXTURES:[F

    .line 3
    const-class v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TAG:Ljava/lang/String;

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
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const v0, 0x3f7d70a4    # 0.99f

    .line 3
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverExposure:F

    const v0, 0x3c23d70a    # 0.01f

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderExposure:F

    const v0, 0xcd5c60

    .line 5
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    const v0, 0x6db2f4

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 7
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 8
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mGap:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    const/16 v0, 0x69

    .line 10
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision highp float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformAlphaH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformStepH:I

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformInvertRectH:I

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformEffectParameterH:I

    .line 12
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSizeH:I

    .line 13
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOverExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverExposureH:I

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uUnderExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderExposureH:I

    .line 15
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOverColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverColorH:I

    .line 16
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uUnderColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderColorH:I

    .line 17
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformWidthH:I

    .line 18
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uGap"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformGapH:I

    .line 19
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOffsetH:I

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/renderer/ZebraRender;

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
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSTMatrixH:I

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
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformStepH:I

    move/from16 v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    move/from16 v5, p4

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 12
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSizeH:I

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 13
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverExposureH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverExposure:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 14
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderExposureH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderExposure:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 15
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverColorH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget v4, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v1, v2, v4, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 16
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderColorH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v1, v2, v4, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 17
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformWidthH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mWidth:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 18
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformGapH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mGap:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 19
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOffsetH:I

    iget v0, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initShader()V

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initAttributePointer()V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    :cond_0
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    .line 2
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    .line 3
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 4
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object p1, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v3, v3

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v6, v5}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 12
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v3, v3

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v5, v1}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 13
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 14
    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 16
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 18
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    .line 19
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method
