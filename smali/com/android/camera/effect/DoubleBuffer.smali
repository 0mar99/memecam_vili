.class public Lcom/android/camera/effect/DoubleBuffer;
.super Ljava/lang/Object;
.source "DoubleBuffer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DoubleBuffer"


# instance fields
.field public mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

.field public mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    .line 3
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init@2: w="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parentFbo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DoubleBuffer"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getInputBuffer()Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    return-object p0
.end method

.method public getOutputBuffer()Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->safeDeleteTexture(I)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->safeDeleteTexture(I)V

    .line 8
    iput-object v1, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method public swapBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    iput-object v1, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferIn:Lcom/android/camera/effect/FrameBuffer;

    .line 3
    iput-object v0, p0, Lcom/android/camera/effect/DoubleBuffer;->mFrameBufferOut:Lcom/android/camera/effect/FrameBuffer;

    return-void
.end method
