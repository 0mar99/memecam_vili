.class public Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;
.super Ljava/lang/Object;
.source "HDR10ThumbnailUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HDR10ThumbnailUtil"

.field public static mBitmap:Landroid/graphics/Bitmap;

.field public static mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

.field public static mLutRender:Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

.field public static mRenderSurface:Lcom/android/camera/effect/framework/gles/EglSurfaceBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHdr10Bitmap(Landroid/opengl/EGLContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getInstance()Lcom/android/camera/effect/renders/SnapshotRenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getSnapshotRender()Lcom/android/camera/effect/renders/SnapshotRender;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender;->processHdr2SdrSync(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getPixelsFromBuffer(IIII)Landroid/graphics/Bitmap;
    .locals 10

    add-int v0, p1, p3

    mul-int/2addr v0, p2

    .line 1
    new-array v0, v0, [I

    mul-int v1, p2, p3

    .line 2
    new-array v1, v1, [I

    .line 3
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    .line 4
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 5
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p0, v9

    move p1, p0

    :goto_0
    if-ge p0, p3, :cond_1

    move v2, v9

    :goto_1
    if-ge v2, p2, :cond_0

    mul-int v3, p0, p2

    add-int/2addr v3, v2

    .line 6
    aget v3, v0, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    sub-int v4, p3, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    .line 7
    aput v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
