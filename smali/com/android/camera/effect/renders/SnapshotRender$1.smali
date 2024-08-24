.class public Lcom/android/camera/effect/renders/SnapshotRender$1;
.super Ljava/lang/Object;
.source "SnapshotRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/renders/SnapshotRender;->processHdr2SdrSync(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotRender;

.field public final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field public final synthetic val$result:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iput-object p2, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$result:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

    invoke-direct {v0}, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->access$100(Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;II)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->access$300(Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->access$200(Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/camera/storage/HDR10Thumbnail/gles/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v1

    .line 6
    invoke-static {}, Lcom/android/camera/storage/HDR10Thumbnail/gles/OpenGLUtils;->loadTexture1d()I

    move-result v2

    const-string v4, "loadTexture1d"

    .line 7
    invoke-static {v4}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlError(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->draw(II)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$result:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->getPixelsFromBuffer(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 10
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "processHdr2SdrSync: done."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
