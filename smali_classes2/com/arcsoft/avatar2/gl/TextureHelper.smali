.class public Lcom/arcsoft/avatar2/gl/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    return-void
.end method


# virtual methods
.method public deleteTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    array-length p0, p0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public getTextureId()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget p0, p0, v0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error generating texture name."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    iget-object p0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    aget v0, p0, v2

    if-eqz v0, :cond_0

    .line 3
    aget p0, p0, v2

    const/16 v0, 0xde1

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2801

    const/16 v1, 0x2600

    .line 4
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2800

    .line 5
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 6
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error generating texture name."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadTexture(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/16 v1, 0xde1

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2
    invoke-static {v1, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 3
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
