.class public interface abstract Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SurfaceTextureScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalFrameProcessor"
.end annotation


# virtual methods
.method public getProcessorType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedCopyPreviewFromExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isProcessorReady()Z
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;[FLandroid/graphics/Rect;Lcom/android/gallery3d/ui/ExtTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceViewPause()V
    .locals 0

    return-void
.end method

.method public onSurfaceViewResume()V
    .locals 0

    return-void
.end method

.method public prepareGL()V
    .locals 0

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method
