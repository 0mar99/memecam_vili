.class public final Lcom/android/camera/effect/renders/PipeRenderPair;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRenderPair.java"


# static fields
.field public static final DUMP_PREVIEW:Z

.field public static final MIDDLE_BUFFER_RATIO:I = 0xc

.field public static final TAG:Ljava/lang/String; = "PipeRenderPair"


# instance fields
.field public mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field public mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mBufferHeight:I

.field public mBufferWidth:I

.field public mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mFirstRender:Lcom/android/camera/effect/renders/Render;

.field public mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mFrameBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mSecondRender:Lcom/android/camera/effect/renders/Render;

.field public mTextureFilled:Z

.field public mUseMiddleBuffer:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.debug.dump.preview"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/effect/renders/PipeRenderPair;->DUMP_PREVIEW:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 7
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 10
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 11
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 15
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 16
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 28
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 29
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 p2, -0x1

    .line 32
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 33
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 34
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 35
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 36
    iput-boolean p5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 18
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 19
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 23
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 24
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 25
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 26
    iput-boolean p4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method private dumpPreview(ZLcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "preview_dump"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v0, ".jpg"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->dumpToExternalFile(IIIILjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 5
    iget-object p1, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    if-ne p1, v1, :cond_1

    iget-object p1, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    if-ne p1, v1, :cond_1

    .line 7
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p1, v1, p2, v2}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    .line 8
    iget p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, p2, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 9
    invoke-virtual {p0, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->dumpToExternalFile(IIIILjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v3

    if-ge p1, p2, :cond_0

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    int-to-double v6, p2

    int-to-double v8, p1

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_1

    :cond_0
    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    int-to-double v6, p1

    int-to-double v8, p2

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    :goto_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 8
    invoke-static {v3}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v2

    invoke-static {p2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FrameBuffer;

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    .line 10
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    invoke-direct {v0, v2, p1, p2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "FrameBuffer alloc size %d*%d id %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Counter"

    .line 12
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_4

    .line 14
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result p2

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    return-void
.end method

.method private updateMiddleBuffer(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    .line 2
    div-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 3
    div-int/lit8 p2, p2, 0xc

    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 5
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "At most 2 renders are supported in PipeRenderPair!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    const-string v1, "before copyBlurTexture draw"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    .line 7
    :cond_2
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 10
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 14
    sget-object p0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    const-string p1, "after copyBlurTexture draw"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public deleteBuffer()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/FrameBuffer;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->release()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 9
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne v0, v4, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const-string v4, "after mSecondRender="

    const-string v5, "before mSecondRender="

    const-string v6, "after mFirstRender="

    const-string v7, "before mFirstRender="

    if-ne v0, v2, :cond_7

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 5
    sget-object v2, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " drawExt"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-direct {p0, v2, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v8, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v10, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 9
    invoke-virtual {v12}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v12

    iget-object v13, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 10
    invoke-virtual {v13}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v13

    invoke-direct {v11, v1, v1, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v8

    .line 12
    invoke-virtual {v2, v8}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 13
    sget-boolean v2, Lcom/android/camera/effect/renders/PipeRenderPair;->DUMP_PREVIEW:Z

    if-eqz v2, :cond_2

    .line 14
    invoke-direct {p0, v3, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->dumpPreview(ZLcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 15
    :cond_2
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 18
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz p1, :cond_3

    .line 19
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before MiddleFrameBuffer="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 21
    iget p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v8, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v9, Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {v9, v1, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v8, v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 25
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after MiddleFrameBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectController;->isMainFrameDisplay()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000ooO()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    goto :goto_1

    .line 30
    :cond_4
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 32
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 34
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v3

    .line 35
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v2, 0x5

    const/16 v8, 0xa

    if-eq v0, v2, :cond_a

    .line 36
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    if-ne v0, v8, :cond_8

    goto/16 :goto_2

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    .line 38
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 39
    sget-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " drawInt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget-object v8, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 43
    invoke-virtual {v8}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 44
    invoke-virtual {v9}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v9

    .line 45
    invoke-static {v8, v9}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    invoke-direct {v1, v7, v8, v9}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 48
    sget-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 50
    sget-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v5

    iget-object v6, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    invoke-virtual {v1, v5, v6, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;Z)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 52
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_9
    return v1

    .line 53
    :cond_a
    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    if-ne p1, v8, :cond_b

    .line 55
    iget-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 56
    :cond_b
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " drawBasic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 59
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v8, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 60
    invoke-virtual {v8}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 61
    invoke-virtual {v9}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v9

    .line 62
    invoke-static {v8, v9}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 65
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 67
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v5

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 69
    sget-object p1, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 70
    :cond_c
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    .line 71
    sget-boolean v3, Lcom/android/camera/effect/renders/PipeRenderPair;->DUMP_PREVIEW:Z

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v3

    if-ne v3, v2, :cond_d

    .line 72
    invoke-direct {p0, v1, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->dumpPreview(ZLcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_d
    return v0
.end method

.method public drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    const-string v1, "before drawBlurTexture draw"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p0

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 4
    sget-object p0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    const-string p1, "after drawBlurTexture draw"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p0

    return-object p0
.end method

.method public prepareCopyBlurTexture()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public setFirstRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    div-int/lit8 p1, p1, 0xc

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    :goto_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    div-int/lit8 p1, p1, 0xc

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    :goto_1
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    return-void
.end method

.method public setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    :cond_2
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 6
    iput-object p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setSecondRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setUsedMiddleBuffer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method
