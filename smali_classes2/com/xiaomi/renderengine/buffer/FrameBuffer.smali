.class public Lcom/xiaomi/renderengine/buffer/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameBuffer"


# instance fields
.field public final mFrameBufferId:[I

.field public final mHeight:I

.field public final mTextureId:[I

.field public final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    new-array v2, v0, [I

    .line 3
    iput-object v2, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    .line 4
    iput p1, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mWidth:I

    .line 5
    iput p2, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mHeight:I

    .line 6
    invoke-static {v2, v1, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFrameBuffers([I[III)V

    .line 7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v2, p1

    const-string p0, "New FrameBuffer: fbo=%d tex=%d %d*%d tid=%d"

    .line 9
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameBuffer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getFboId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mHeight:I

    return p0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mWidth:I

    return p0
.end method

.method public release()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->deleteTextures(I[I)V

    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    aget v4, v4, v2

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iget v1, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const-string v1, "Release FrameBuffer: fbo=%d tex=%d %d*%d tid=%d"

    .line 5
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameBuffer"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mTextureId:[I

    aput v2, v0, v2

    .line 7
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->mFrameBufferId:[I

    aput v2, p0, v2

    return-void
.end method
