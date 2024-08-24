.class public Lcom/android/camera/fragment/FragmentHalo;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentHalo.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/HaloProtocol;


# instance fields
.field public mLastCameraId:I

.field public mShineHalo:Lcom/android/camera/ui/FlashHaloView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentHalo;->mLastCameraId:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private getHorCoverSize()[Landroid/graphics/Point;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-interface {p0, v2, v0}, Lcom/android/camera/protocol/protocols/RoundCoverProtocol;->getHorCoverSize(ZLandroid/graphics/Point;)Z

    const/4 v3, 0x1

    .line 5
    invoke-interface {p0, v3, v1}, Lcom/android/camera/protocol/protocols/RoundCoverProtocol;->getHorCoverSize(ZLandroid/graphics/Point;)Z

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/Point;

    aput-object v0, p0, v2

    aput-object v1, p0, v3

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateCoverTheme(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/android/camera/Util;->setBrightnessRampRate(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloBrightness()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/FlashHaloView;->updateThemeStyle(II)V

    return-void
.end method

.method private updateHaloCover()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentHalo;->getHorCoverSize()[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {v4, v3, v3}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    const/4 v4, -0x1

    .line 5
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/FragmentHalo;->updateCoverTheme(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentHalo;->updateSystemUIVisibility()V

    :goto_0
    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 10
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const-string v4, "halo"

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_2

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public disableFrontFlashAndHalo(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentRealValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/FragmentHalo;->mLastCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "2"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO00;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-interface {p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->reInitAlert(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableFrontHalo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf8

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d008c

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a039c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/FlashHaloView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentHalo;->updateHaloViewSize()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentHalo;->updateHaloCover()V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentHalo;->updateHaloViewSize()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->animBlackCover()V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    iget p2, p0, Lcom/android/camera/fragment/FragmentHalo;->mLastCameraId:I

    if-eq p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentHalo;->mLastCameraId:I

    :cond_0
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
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
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->updateCoveredBlackView()V

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentHalo;->getHorCoverSize()[Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 5
    aget-object p3, p3, p2

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-nez p3, :cond_4

    .line 6
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/FlashHaloView;->hide(Z)V

    :cond_4
    :goto_1
    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentHalo;->updateCoverTheme(I)V

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

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/FragmentHalo;->updateCoverTheme(I)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/HaloProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public showHalo(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/HaloProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateHaloViewSize()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    .line 5
    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/protocols/RoundCoverProtocol;->getVerCoverSize(ZLandroid/graphics/Point;)Z

    const/4 v3, 0x1

    .line 6
    invoke-interface {v0, v3, v2}, Lcom/android/camera/protocol/protocols/RoundCoverProtocol;->getVerCoverSize(ZLandroid/graphics/Point;)Z

    move-result v10

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentHalo;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/ui/FlashHaloView;->setMaskMargins(IIIILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public updateSystemUIVisibility()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2010

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
