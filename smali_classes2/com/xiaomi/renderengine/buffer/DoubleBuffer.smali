.class public Lcom/xiaomi/renderengine/buffer/DoubleBuffer;
.super Ljava/lang/Object;
.source "DoubleBuffer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DoubleBuffer"


# instance fields
.field public mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

.field public mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 3
    new-instance v0, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    const-string p0, "DoubleBuffer"

    const-string p1, "New DoubleBuffer"

    .line 4
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    return-object p0
.end method

.method public getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    .line 3
    iput-object v1, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    .line 6
    iput-object v1, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    :cond_1
    const-string p0, "DoubleBuffer"

    const-string v0, "Release DoubleBuffer"

    .line 7
    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public swapBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iput-object v1, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 2
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->mFrameBufferOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "DoubleBuffer: fboIn(%d) texIn(%d) fboOut(%d) texOut(%d) width(%d) height(%d)"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
