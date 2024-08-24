.class public Lcom/android/camera/fragment/FragmentBottomIntentDone;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomIntentDone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/protocol/protocols/IntentDoneProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff3

.field public static final TAG:Ljava/lang/String; = "FragmentBottomIntentDone"


# instance fields
.field public mApplyView:Landroid/widget/ImageView;

.field public mIsIntentAction:Z

.field public mMainView:Landroid/view/View;

.field public mResultView:Landroid/widget/ImageView;

.field public mRetryView:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus(Z)V

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const v0, 0x7f0600ad

    const v1, 0x7f080106

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const v0, 0x7f0600a9

    const v1, 0x7f080105

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method private adjustViewResourceTintColor()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const v2, 0x7f060387

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mResultView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mResultView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-array v0, v2, [Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Landroid/view/View;

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v0

    new-array v2, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public varargs alignSnapBottom(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs alignSnapTop(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff3

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0062

    return p0
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo;-><init>(Lcom/android/camera/fragment/FragmentBottomIntentDone;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a01fd

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    const v0, 0x7f0a01fe

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const v0, 0x7f0a013d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const v0, 0x7f0a036b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mResultView:Landroid/widget/ImageView;

    const v0, 0x7f0a0480

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mVideoReviewPlay:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewResourceTintColor()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mIsIntentAction:Z

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p2

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mIsIntentAction:Z

    if-eq p2, v0, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mIsIntentAction:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->hide()V

    :cond_0
    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    :goto_0
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
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewResourceTintColor()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    const-string p0, "FragmentBottomIntentDone"

    const-string/jumbo p1, "onAttach"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoO0;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->onReviewCancelClicked()V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a013d

    const-string v2, "FragmentBottomIntentDone"

    if-eq p1, v1, :cond_3

    const v1, 0x7f0a01fe

    if-eq p1, v1, :cond_2

    const p0, 0x7f0a0480

    if-eq p1, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/PlayVideoProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooOO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "onClick: intent_done_retry"

    .line 4
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0o;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->onReviewCancelClicked()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoo0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "onClick: done_button"

    .line 9
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->onReviewDoneClicked()V

    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDetach()V

    const-string p0, "FragmentBottomIntentDone"

    const-string/jumbo v0, "onDetach"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public setResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mResultView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;-><init>(Lcom/android/camera/fragment/FragmentBottomIntentDone;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoO;-><init>(Lcom/android/camera/fragment/FragmentBottomIntentDone;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v3

    sub-int/2addr p2, v3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x15

    .line 6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result p2

    const/4 v3, 0x4

    if-eqz p2, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0O0O()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 10
    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 v3, 0x5

    .line 13
    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 14
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p2

    const-string v4, "4:3"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 18
    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 21
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 22
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 25
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr p2, v4

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 26
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 27
    :cond_4
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 28
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 29
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array p2, v1, [Landroid/view/View;

    .line 31
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v3, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->alignSnapTop(I[Landroid/view/View;)V

    new-array p2, v1, [Landroid/view/View;

    .line 32
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v3, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->alignSnapBottom(I[Landroid/view/View;)V

    new-array p1, v0, [Landroid/view/View;

    .line 33
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object p2, p1, v1

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    const/16 p2, 0x30

    .line 34
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p2

    int-to-float p2, p2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 37
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p2

    int-to-float p2, p2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v3

    add-int/2addr p2, v3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f060056

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mResultView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 44
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 45
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array p2, v1, [Landroid/view/View;

    .line 47
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v3, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array p2, v1, [Landroid/view/View;

    .line 48
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v3, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v0, [Landroid/view/View;

    .line 49
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object p2, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_1

    .line 50
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    .line 51
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v4, v3, v2

    invoke-interface {p1, p2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->alignSnapLeftByDefault(Landroid/content/Context;[Landroid/view/View;)V

    .line 52
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v4, v3, v2

    invoke-interface {p1, p2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->alignSnapRightByDefault(Landroid/content/Context;[Landroid/view/View;)V

    .line 53
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result p1

    new-array p2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v0, p2, v2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    :goto_1
    return-void
.end method
