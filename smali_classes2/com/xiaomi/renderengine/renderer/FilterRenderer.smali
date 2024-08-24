.class public Lcom/xiaomi/renderengine/renderer/FilterRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "FilterRenderer.java"


# static fields
.field public static final DEGREE_VALUE_MAX:I = 0x64

.field public static final DEGREE_VALUE_MIN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FilterRenderer"

.field public static final TEXTURES:[F

.field public static final VERTICES:[F


# instance fields
.field public mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mCurrentDarkName:Ljava/lang/String;

.field public mCurrentLutName:Ljava/lang/String;

.field public mDarkTextureId:[I

.field public mLutTextureId:[I

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformCurTime:I

.field public mUniformDarkTextureH:I

.field public mUniformInputTextureH:I

.field public mUniformLatticeCountH:I

.field public mUniformLutSizeH:I

.field public mUniformLutTextureH:I

.field public mUniformMVPMatrixH:I

.field public mUniformMaxColorH:I

.field public mUniformNeedDarkH:I

.field public mUniformNeedNoiseH:I

.field public mUniformSTMatrixH:I

.field public mUniformStrengthH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->TEXTURES:[F

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
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 6
    invoke-static {v0}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    return-void
.end method

.method private uploadDarkTexture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object v0, v0, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mDarkSourceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aget v2, v2, v1

    if-nez v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/RenderEngine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    const/16 v4, 0xde1

    invoke-static {v4, v2}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTexture(ILandroid/graphics/Bitmap;)I

    move-result v2

    aput v2, v3, v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadDarkTexture name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " texId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aget p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilterRenderer"

    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aget v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->deleteTextures(I[I)V

    .line 9
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aput v1, p0, v1

    :cond_2
    :goto_1
    return-void
.end method

.method private uploadLutTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mCurrentLutName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 3
    invoke-static {v3, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->deleteTextures(I[I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTexture(ILandroid/graphics/Bitmap;)I

    move-result v0

    aput v0, v1, v2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadLutTexture name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mCurrentLutName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " texId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    aget p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilterRenderer"

    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shading_script/ver_filter.glsl"

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->loadShaderFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "shading_script/frag_filter.glsl"

    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/gl/GLUtils;->loadShaderFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformMVPMatrixH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformSTMatrixH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformInputTextureH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLutTextureH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "maxColorValue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformMaxColorH:I

    .line 10
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "lutWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLutSizeH:I

    .line 11
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "latticeCount"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLatticeCountH:I

    .line 12
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    .line 13
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformStrengthH:I

    .line 15
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "darkTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformDarkTextureH:I

    .line 16
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "needDark"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformNeedDarkH:I

    .line 17
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "needNoise"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformNeedNoiseH:I

    .line 18
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const-string v1, "currentTime"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformCurTime:I

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/renderer/FilterRenderer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mProgram = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v6, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

    iget-object v11, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformSTMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getTexMatrix()[F

    move-result-object p2

    invoke-static {v0, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 7
    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mCurrentLutName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mCurrentLutName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->uploadLutTexture()V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->uploadDarkTexture()V

    const p2, 0x84c0

    .line 11
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 12
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformInputTextureH:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c1

    .line 14
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 15
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    aget p1, p1, v3

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLutTextureH:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 17
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object p1, p1, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mDarkSourceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    const p1, 0x84c2

    .line 18
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 19
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aget p1, p1, v3

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformDarkTextureH:I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    const/16 p1, 0x64

    .line 21
    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mEffectDegree:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 22
    iget p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformStrengthH:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 23
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLutSizeH:I

    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableSize:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 24
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget p1, p1, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableSize:I

    const/16 p2, 0x200

    if-ne p1, p2, :cond_2

    const/16 p1, 0x40

    goto :goto_0

    :cond_2
    const/16 p1, 0x10

    .line 25
    :goto_0
    iget p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformMaxColorH:I

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    int-to-double p1, p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 27
    iget p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformLatticeCountH:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 28
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformNeedDarkH:I

    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mDarkSourceName:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 29
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformNeedNoiseH:I

    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-boolean p2, p2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mNeedNoise:Z

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 30
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mUniformCurTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-float p1, p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "FilterRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->initShader()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->initAttributePointer()V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mCurrentLutName:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->uploadLutTexture()V

    :cond_1
    return-void
.end method

.method public onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "FilterRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v2, p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->deleteTextures(I[I)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    aput v0, p1, v0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aget v1, p1, v0

    if-eqz v1, :cond_3

    .line 11
    invoke-static {v2, p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->deleteTextures(I[I)V

    .line 12
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mDarkTextureId:[I

    aput v0, p0, v0

    :cond_3
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    iget-object v0, v0, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    .line 4
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 5
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 12
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v5}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 13
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;)V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mLutTextureId:[I

    aget v0, v0, v3

    if-nez v0, :cond_1

    .line 15
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 16
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 17
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 18
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 19
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mAttributeTexCoorH:I

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
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;->mProgram:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
