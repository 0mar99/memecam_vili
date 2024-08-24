.class public final Lcom/xiaomi/camera/liveshot/gles/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;,
        Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;
    }
.end annotation


# static fields
.field public static final MSG_CINEMATIC_CHANGED:I = 0x40

.field public static final MSG_DRAW_REQUESTED:I = 0x10

.field public static final MSG_FILTER_CHANGED:I = 0x20

.field public static final MSG_QUIT_REQUESTED:I = 0x30

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

.field public mCanvasHeight:I

.field public mCanvasWidth:I

.field public mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

.field public volatile mEglContextPrepared:Z

.field public mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

.field public mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

.field public mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field public mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

.field public mIsRecordable:Z

.field public final mLock:Ljava/lang/Object;

.field public volatile mReady:Z

.field public volatile mRequestDraw:I

.field public volatile mRequestRelease:Z

.field public final mShardContext:Landroid/opengl/EGLContext;

.field public mStreamHeight:I

.field public mStreamWidth:I

.field public mSurface:Landroid/view/Surface;

.field public mTextureHeight:I

.field public mTextureOffsetX:I

.field public mTextureOffsetY:I

.field public mTextureWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;-><init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread$1;)V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    .line 5
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    .line 6
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    .line 8
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    .line 9
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 10
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    .line 11
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    .line 12
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    .line 13
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    .line 14
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamWidth:I

    .line 15
    iput p3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamHeight:I

    .line 16
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    .line 17
    iput p3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    .line 18
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    .line 19
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    .line 20
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    .line 21
    iput p3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    .line 22
    iput-object p4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mShardContext:Landroid/opengl/EGLContext;

    .line 23
    iput-object p5, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    .line 24
    iput-boolean p6, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mIsRecordable:Z

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->doDraw()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/liveshot/gles/RenderThread;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->applyFilterId(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->doQuit()V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->updateCinematic()V

    return-void
.end method

.method private applyFilterId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/VideoRecorderCanvas;->applyFilterId(I)V

    :cond_0
    return-void
.end method

.method private doDraw()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    const/4 v2, 0x1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    :cond_3
    if-eqz v1, :cond_a

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    if-eqz v1, :cond_a

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {v1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()Z

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/VideoRecorderCanvas;->setSize(II)V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    iget v1, v1, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;->mRotation:I

    .line 11
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    iget-boolean v2, v2, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;->mMirror:Z

    const/16 v3, 0x5a

    const/16 v4, 0x10e

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    iget v7, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-virtual {v2, v7, v8}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    if-eq v1, v4, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v6}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    goto :goto_2

    .line 14
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_9

    if-ne v1, v4, :cond_7

    const/16 v1, -0x5a

    .line 16
    iget v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_4

    :cond_7
    if-ne v1, v3, :cond_8

    .line 17
    iget v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_8
    move v2, v6

    .line 18
    :goto_4
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v7, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v3, v4, v7}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 19
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4, v6}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 20
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v6}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 21
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 22
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->clearBuffer()V

    .line 23
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 24
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 25
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->swapBuffers()Z

    .line 26
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doQuit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->release()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mIsRecordable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    new-instance v1, Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mShardContext:Landroid/opengl/EGLContext;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/camera/liveshot/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()Z

    .line 6
    new-instance v0, Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 7
    iget v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    iget p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/effect/VideoRecorderCanvas;->setSize(II)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 3
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;->deleteProgram()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 10
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->release()V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    :cond_3
    return-void
.end method

.method private updateCinematic()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/VideoRecorderCanvas;->updateCinematic()V

    :cond_0
    return-void
.end method

.method private updateCropRect()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamHeight:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamWidth:I

    iget v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    mul-int v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-le v2, v5, :cond_0

    .line 2
    iput v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    mul-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v0, v7

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    .line 4
    iput v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    neg-int v0, v0

    .line 5
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    goto :goto_0

    :cond_0
    mul-int v2, v0, v1

    mul-int v5, v3, v4

    if-ne v2, v5, :cond_1

    .line 6
    iput v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    .line 7
    iput v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    .line 8
    iput v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    .line 9
    iput v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    goto :goto_0

    :cond_1
    mul-int/2addr v3, v4

    int-to-float v2, v3

    mul-float/2addr v2, v7

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 10
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    .line 11
    iput v4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    neg-int v0, v0

    .line 12
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    .line 13
    iput v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    move-object v1, p1

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v6, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetX:I

    iget v7, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureOffsetY:I

    iget v8, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureWidth:I

    iget v9, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mTextureHeight:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    iput-boolean p3, p1, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;->mMirror:Z

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawAttributes:Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;

    iput p2, p1, Lcom/xiaomi/camera/liveshot/gles/RenderThread$DrawAttributes;->mRotation:I

    .line 10
    iget p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    .line 11
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHandler()Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "render thread is not ready yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public quit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;-><init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread;Lcom/xiaomi/camera/liveshot/gles/RenderThread$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    .line 3
    sget-object v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "prepare render thread: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->prepare()V

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "FATAL: failed to prepare render thread"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->release()V

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_2
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 16
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    .line 17
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 18
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    sget-object p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v0, "prepare render thread: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 21
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setCanvasSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasWidth:I

    .line 2
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvasHeight:I

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->updateCropRect()V

    return-void
.end method

.method public setCinematicEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFilterId(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStreamSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamWidth:I

    .line 2
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mStreamHeight:I

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->updateCropRect()V

    return-void
.end method

.method public syncDraw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;IZ)V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    return-void
.end method

.method public waitUntilReady()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    sget-object v2, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitUntilReady() interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
