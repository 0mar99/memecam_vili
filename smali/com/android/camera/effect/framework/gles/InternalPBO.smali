.class public Lcom/android/camera/effect/framework/gles/InternalPBO;
.super Ljava/lang/Object;
.source "InternalPBO.java"


# instance fields
.field public mHeight:I

.field public mPboReadPixel:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    return-void
.end method

.method private initReadPixelBuffer(II)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    const p0, 0x88eb

    .line 4
    invoke-static {p0, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    const/4 p2, 0x0

    const v1, 0x88e5

    .line 5
    invoke-static {p0, p1, p2, v1}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 6
    invoke-static {p0, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void
.end method


# virtual methods
.method public PboReadpixels(III)V
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    const v0, 0x88eb

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1907

    const/16 v6, 0x1401

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    .line 2
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES30;->glReadPixels(IIIIIII)V

    .line 3
    invoke-static {p1, p2, p3}, Lcom/android/camera/effect/ShaderNativeUtil;->readPixelsPboPlainMerge(III)V

    const/4 p0, 0x0

    .line 4
    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void
.end method

.method public checkPbo(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/framework/gles/InternalPBO;->initReadPixelBuffer(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mWidth:I

    if-lt v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mHeight:I

    if-ge v0, p2, :cond_2

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    const v1, 0x88eb

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    const v3, 0x88e5

    .line 5
    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 7
    iput p1, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mWidth:I

    .line 8
    iput p2, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mHeight:I

    :cond_2
    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mWidth:I

    return p0
.end method

.method public releasePbo()V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/camera/effect/framework/gles/InternalPBO;->mPboReadPixel:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    :cond_0
    return-void
.end method
