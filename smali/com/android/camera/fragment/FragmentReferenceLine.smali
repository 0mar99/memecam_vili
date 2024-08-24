.class public Lcom/android/camera/fragment/FragmentReferenceLine;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentReferenceLine.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;


# instance fields
.field public mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

.field public mGradienter:Lcom/android/camera/ui/GradienterDrawer;

.field public mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_referenceline_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private needReferenceLineMode()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb6

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewReferenceLine()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewGradienter()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewCenterMark()V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffffff2

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00b9

    return p0
.end method

.method public getReferenceLine()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    return-object p0
.end method

.method public hidePreviewCenterMark()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePreviewGradienter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setGradienterEnabled(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePreviewReferenceLine()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setReferenceLineEnabled(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideReferenceGradienter()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOoo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOoo;-><init>(Lcom/android/camera/fragment/FragmentReferenceLine;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mRootView:Landroid/view/View;

    const v0, 0x7f0a047f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->initialize(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setBorderVisible(ZZ)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setLineColor(I)V

    const v0, 0x7f0a0477

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CenterMarkDrawer;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ui/CenterMarkDrawer;->init()V

    const v0, 0x7f0a047e

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GradienterDrawer;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->updateReferenceGradienterSwitched()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->updateCenterMarkSwitched()V

    :cond_1
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewReferenceLine()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewGradienter()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hidePreviewCenterMark()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->hideReferenceGradienter()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateCenterMarkSwitched()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentReferenceLine;->updateCenterMarkSwitched(Z)V

    return-void
.end method

.method public updateCenterMarkSwitched(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateReferenceGradienterSwitched()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentReferenceLine;->needReferenceLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    .line 6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentReferenceLine;->updateReferenceGradienterSwitched(ZZZ)V

    return-void
.end method

.method public updateReferenceGradienterSwitched(ZZZ)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    if-nez v0, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ReferenceLineDrawer;->setGradienterEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GradienterDrawer;->setReferenceLineEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v3, p3}, Lcom/android/camera/ui/GradienterDrawer;->setConfigInfo(IIZ)V

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentReferenceLine;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method
