.class public Lcom/android/camera/fragment/FragmentAutoZoom;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentAutoZoom.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;


# instance fields
.field public mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff1

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0056

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0083

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/autozoom/AutoZoomView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    return-void
.end method

.method public isAutoZoomActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result p0

    return p0
.end method

.method public isAutoZoomEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoZoomViewEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAutoZoomStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onAutoZoomStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onTrackingStarted(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->startTracking(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public onTrackingStopped(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->setPreviewSize(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentAutoZoom;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->setVideoCastLayoutType(I)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
