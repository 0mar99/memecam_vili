.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"

# interfaces
.implements Lcom/android/camera/effect/EffectController$EffectChangedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EffectRenderGroup"


# instance fields
.field public mCvEffectId:I

.field public mEffectId:I

.field public mEffectPopup:Ljava/lang/Boolean;

.field public mFirstFrameDrawn:Z

.field public mIsFocusPeakEnabled:Z

.field public mIsKaleidoscopeEnabled:Z

.field public mIsMakeupEnabled:Z

.field public mIsZebraEnabled:Z

.field public mLastCvEffectId:I

.field public mLastEffectId:I

.field public mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field public mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

.field public mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

.field public mRenderChanged:Ljava/lang/Boolean;

.field public final mRenderChangedLock:Ljava/lang/Object;

.field public mTiltShiftMode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    .line 3
    sget v0, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    .line 4
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastEffectId:I

    .line 5
    sget v0, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastCvEffectId:I

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    .line 9
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 10
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 11
    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 12
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method private drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getBlurAnimationValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(Landroid/graphics/Rect;I)V

    .line 4
    invoke-interface {p0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 5
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 6
    iget-boolean v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->updatePreviewSecondRender(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setUsedMiddleBuffer(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return v1
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTiltShitRender()Lcom/android/camera/effect/renders/Render;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "circle"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    const-string/jumbo v1, "parallel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeCache(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    return-void
.end method

.method private updatePreviewSecondRender(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-ne v0, p1, :cond_0

    .line 4
    monitor-exit v1

    return v3

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    const-string v2, "before updatePreviewSecondRender"

    invoke-static {v0, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget v0, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->removeCache(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastEffectId:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    if-eq v0, v2, :cond_2

    .line 11
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastEffectId:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->removeCache(I)V

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastCvEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastCvEffectId:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    if-eq v0, v2, :cond_3

    .line 13
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastCvEffectId:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->removeCache(I)V

    .line 14
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBeautyFrameReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget v0, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 17
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsKaleidoscopeEnabled:Z

    if-eqz v0, :cond_5

    .line 18
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 20
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/Render;->setKaleidoscope(Ljava/lang/String;)V

    :cond_5
    if-nez p1, :cond_6

    .line 21
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsZebraEnabled:Z

    if-eqz v0, :cond_6

    .line 22
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 24
    :cond_6
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v2, :cond_8

    .line 25
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 26
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 27
    :cond_7
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastEffectId:I

    .line 28
    :cond_8
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    if-eq v0, v2, :cond_a

    .line 29
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 30
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 31
    :cond_9
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mLastCvEffectId:I

    :cond_a
    if-nez p1, :cond_c

    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 33
    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->getTiltShitRender()Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 34
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    .line 35
    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    if-eqz v0, :cond_c

    .line 36
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 37
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 38
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 39
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {v0, v2, v4}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    .line 40
    :cond_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    .line 42
    sget-object p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    const-string p1, "after updatePreviewSecondRender"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 43
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    .line 4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getCvEffectForPreview()I

    move-result v3

    if-eq v1, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eq v2, v3, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->prepareCopyBlurTexture()V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p0

    return p0
.end method

.method public varargs onEffectChanged([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_8

    aget v6, p1, v4

    if-eq v6, v5, :cond_7

    const/16 v5, 0xa

    if-eq v6, v5, :cond_6

    const/4 v5, 0x3

    if-eq v6, v5, :cond_5

    const/4 v5, 0x4

    if-eq v6, v5, :cond_4

    const/4 v5, 0x5

    if-eq v6, v5, :cond_2

    const/4 v5, 0x7

    if-eq v6, v5, :cond_1

    const/16 v5, 0x8

    if-eq v6, v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isKaleidoscopeEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsKaleidoscopeEnabled:Z

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawExposure()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsZebraEnabled:Z

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDrawTilt()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v5

    const/16 v6, 0xa0

    .line 9
    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 10
    iput-object v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isMakeupEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getCvEffectForPreview()I

    move-result v5

    iput v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mCvEffectId:I

    goto :goto_1

    .line 14
    :cond_7
    invoke-virtual {v1, v5}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v5

    iput v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    .line 15
    sget-object v5, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEffectChanged: EFFECT_CHANGE_FILTER mEffectId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRealtimePreviewFilterChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
