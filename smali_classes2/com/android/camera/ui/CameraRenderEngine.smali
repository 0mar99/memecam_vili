.class public Lcom/android/camera/ui/CameraRenderEngine;
.super Ljava/lang/Object;
.source "CameraRenderEngine.java"


# static fields
.field public static final DEBUG_INVALIDATE:Z = false

.field public static final EGL_CONFIG_ATTRS:[I

.field public static final EGL_GL_COLORSPACE_BT2020_PQ_EXT:I = 0x3340

.field public static final EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I = 0x3490

.field public static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field public static final EXT_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH:Ljava/lang/String; = "EGL_EXT_gl_colorspace_display_p3_passthrough"

.field public static final KHR_GL_COLOR_SPACE:Ljava/lang/String; = "EGL_KHR_gl_colorspace"

.field public static final RENDERING_COUNT_INTERVAL:I = 0x21

.field public static final TAG:Ljava/lang/String; = "CameraRenderEngine"

.field public static final WAIT_LOCK_TIMEOUT_MS:I = 0x12c


# instance fields
.field public final mActivity:Lcom/android/camera/Camera;

.field public mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field public mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLContext14:Landroid/opengl/EGLContext;

.field public mEglCore:Lcom/android/camera/ui/gl/EglCore;

.field public mFrameCount:I

.field public mFrameCountingStart:J

.field public mFrameRenderingCount:J

.field public mGLHandler:Landroid/os/Handler;

.field public volatile mHasSurface:Z

.field public mPreviewGLThread:Lcom/android/camera/ui/gl/GLThread;

.field public mPreviewRunnable:Ljava/lang/Runnable;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mPreviewSurfaceHeight:I

.field public mPreviewSurfaceWidth:I

.field public final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile mRenderRequested:Z

.field public volatile mSurfaceUpdated:Z

.field public volatile mSurfaceUpdatedType:I

.field public mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_CONFIG_ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3021
        0x0
        0x3040
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    .line 4
    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    .line 10
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    .line 11
    new-instance p1, Lcom/android/camera/ui/gl/GLThread;

    sget-object v0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_CONFIG_ATTRS:[I

    const-string v1, "CameraRenderThread"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/android/camera/ui/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/android/camera/ui/gl/GLThread;

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/ui/gl/GLThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0O0;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0O0;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init CameraRenderEngine hash:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraRenderEngine"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getWCGWindowSurfaceAttrs()[I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-virtual {p0}, Lcom/android/camera/ui/gl/EglCore;->getEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v1, 0x3055

    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraRenderEngine"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface.exts: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 7
    invoke-static {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getWcgCapability(Ljava/util/Set;)I

    move-result v1

    const-string v2, "EGL_KHR_gl_colorspace"

    .line 8
    invoke-static {v2, v0}, Lcom/android/camera/ui/CameraRenderEngine;->checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    const/4 p0, 0x3

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v2, 0x309d

    aput v2, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x3038

    aput v1, p0, v0

    :cond_1
    return-object p0
.end method

.method public static getWcgCapability(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/ui/CameraRenderEngine;->checkExtensionCapability(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3490

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getWindowSurface()Lcom/android/camera/ui/gl/EglWindowSurface;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface start, updated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CameraRenderEngine"

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getWindowSurface start"

    .line 5
    invoke-static {v4, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglWindowSurface;->release()Z

    .line 8
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOOo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->getWCGWindowSurfaceAttrs()[I

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 11
    fill-array-data v1, :array_0

    const-string v0, "getWindowSurface: color is hdr10 (10 bit), change colorspace to sdr"

    .line 12
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportWCG:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Util;->isSupportWCG(Landroid/app/Activity;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isCurrentModeSupportWCG:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isCurrentModeSupportWCG()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/android/camera/ui/gl/EglWindowSurface;

    iget-object v5, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    iget-object v6, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v0, v5, v6, v1}, Lcom/android/camera/ui/gl/EglWindowSurface;-><init>(Lcom/android/camera/ui/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    const-string v0, "getWindowSurface end"

    .line 15
    invoke-static {v4, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWindowSurface end, cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    .line 18
    :cond_4
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x309d
        0x3340
        0x3038
    .end array-data
.end method

.method private onDrawFrame()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG_FPS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->outputFps()V

    :cond_0
    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onDrawFrame start"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 4
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    .line 6
    iget-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-wide/16 v3, 0x21

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDrawFrame rendering count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraRenderEngine"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    .line 9
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "CameraRenderEngine"

    const-string/jumbo v0, "onDrawFrame fail, screenNail not ready yet!"

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v1

    return-void

    .line 13
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isAnimationRunning()Z

    move-result v3

    .line 15
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isAnimationGaussian()Z

    move-result v4

    .line 16
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OooO()Z

    move-result v6

    if-nez v6, :cond_9

    .line 18
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    if-eq v6, v4, :cond_5

    const/4 v4, 0x2

    if-eq v6, v4, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 21
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v5, v2, v0, v0, v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_a

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 24
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    .line 26
    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getCurrentTransform()[F

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 28
    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v2

    .line 29
    invoke-interface {v5, v0, v3, v4, v2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;[FLandroid/graphics/Rect;Lcom/android/gallery3d/ui/ExtTexture;)Z

    goto :goto_0

    .line 30
    :cond_6
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->prepareGL()V

    if-eqz v3, :cond_a

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 32
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v6}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    if-eqz v3, :cond_8

    if-eqz v4, :cond_a

    .line 33
    :cond_8
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v5, v2, v0, v0, v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    goto :goto_0

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 35
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    .line 39
    :cond_b
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    const-string p0, "CameraRenderEngine"

    const-string/jumbo v0, "onDrawFrame end"

    .line 40
    invoke-static {p0, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private outputFps()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x4

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surface draw fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraRenderEngine"

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-wide v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    return-void
.end method

.method private setPreviewSurface(Landroid/view/Surface;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    if-eq v0, p3, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    .line 3
    iput p3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    .line 4
    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPreviewSurface surface="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraRenderEngine"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/android/camera/ui/gl/GLThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/gl/GLThread;->getEglCore()Lcom/android/camera/ui/gl/EglCore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    .line 3
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 4
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-void
.end method

.method public synthetic OooO00o(II)V
    .locals 2

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onSurfaceChanged start on GL Thread"

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "onSurfaceChanged start"

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x4

    .line 8
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 10
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 12
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSurfaceChanged requestRender mRenderRequested="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    const-wide/16 p1, 0x0

    .line 18
    iput-wide p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-string/jumbo p0, "onSurfaceChanged end on GL Thread"

    .line 19
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "onSurfaceChanged end"

    .line 20
    invoke-static {v0, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onDestroy start on GL Thread"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/ui/gl/EglWindowSurface;->release()Z

    .line 4
    iput-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->deleteProgram()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 8
    iput-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    :cond_1
    const-string/jumbo p0, "onDestroy end on GL Thread"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 4

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onSurfaceCreated start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "onSurfaceCreated start on GL Thread"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    const-string/jumbo v2, "onSurfaceCreated end on GL Thread"

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "is null"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {v1}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 11
    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "onSurfaceCreated end"

    .line 14
    invoke-static {v0, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw v0
.end method

.method public synthetic OooO0Oo()V
    .locals 4

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onSurfaceDestroyed start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed start on GL Thread, mEGLSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRenderRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/ui/gl/EglWindowSurface;->makeCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->clearBuffer()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/ui/gl/EglWindowSurface;->swapBuffers()Z

    .line 7
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    :cond_2
    const-string/jumbo p0, "onSurfaceDestroyed end on GL Thread"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "onSurfaceDestroyed end"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->getWindowSurface()Lcom/android/camera/ui/gl/EglWindowSurface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraRenderEngine"

    if-nez v0, :cond_0

    const-string/jumbo v0, "requestRender fail, EGLSurface not ready yet!"

    .line 2
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglWindowSurface;->makeCurrent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->onDrawFrame()V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglWindowSurface;->swapBuffers()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "requestRender fail, because window surface make current fail!"

    .line 7
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    :goto_0
    return-void
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onDestroy +"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0oO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0oO;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 5
    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    .line 6
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/android/camera/ui/gl/GLThread;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/ui/gl/GLThread;->release()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/android/camera/ui/gl/GLThread;

    :cond_0
    const-string/jumbo p0, "onDestroy -"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraRenderEngine"

    invoke-static {v1, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "onSurfaceChanged start"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d0

    if-eq p2, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    mul-int/2addr p0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    div-int/2addr p0, p2

    .line 5
    invoke-interface {p1, v0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    const-string/jumbo p0, "onSurfaceChanged end, change surface size for limited it"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/CameraRenderEngine;->setPreviewSurface(Landroid/view/Surface;II)V

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    if-nez p1, :cond_1

    const-string/jumbo p0, "onSurfaceChanged end, surface has been updated"

    .line 10
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;

    invoke-direct {v0, p0, p2, p3}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;-><init>(Lcom/android/camera/ui/CameraRenderEngine;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p0, "onSurfaceChanged end"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "onSurfaceCreated"

    .line 1
    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0Oo;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceDestroyed start, mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraRenderEngine"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    .line 8
    :cond_1
    new-instance v0, Lcom/android/camera/BlockingRunnable;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0o;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-direct {v0, v2}, Lcom/android/camera/BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x12c

    .line 10
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/camera/BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    :cond_2
    const-string/jumbo p0, "onSurfaceDestroyed end"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestChangeEglAttrConfig(Landroid/view/SurfaceHolder;I)V
    .locals 2

    const-string v0, "CameraRenderEngine"

    const-string/jumbo v1, "requestChangeEglAttrConfig"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    if-ne v1, p2, :cond_0

    const-string/jumbo p0, "requestChangeEglAttrConfig: nothing change."

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    .line 5
    iput p2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdatedType:I

    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string p0, "CameraRenderEngine"

    const-string/jumbo v0, "requestRender fail, GL not ready yet!"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0o0;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
