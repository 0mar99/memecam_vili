.class public Lcom/android/camera/fragment/vv/FragmentVVFeature;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVVFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VVFeature"


# instance fields
.field public mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDownloadingFeature:Ljava/lang/String;

.field public mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

.field public mFeatureName:Ljava/lang/String;

.field public mFixedLayoutMargin:I

.field public mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public mLoadingText:Landroid/widget/TextView;

.field public mSrcContainerViewId:I

.field public mSrcFragmentInfo:I

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/ColorFilter;
    .locals 2

    .line 4
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;->getVVFeatureLoadingImageColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/vv/FragmentVVFeature;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/vv/FragmentVVFeature;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private onDownloadAndInstallStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VVFeature"

    const-string/jumbo v1, "onDownloadStart"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    return-void
.end method

.method private onInstallFailed()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120498

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    return-void
.end method

.method private onInstalled(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;->onInstalled(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    .line 12
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :goto_0
    return-void
.end method

.method private showDownloadCancelDialog()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->tryCancelDownload(Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const-string v0, "VVFeature"

    const-string/jumbo v1, "onClick onDownloadAndInstallStart"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onDownloadAndInstallStart(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff8

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00c8

    return p0
.end method

.method public initFeatureLayout()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFeatureLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVFeature"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getLocalModeByFeatureName(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const v0, 0x7f1209dd

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f080463

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f0a04b9

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a04b8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a04b6

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f080118

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0a04b7

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 15
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez p1, :cond_2

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 18
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO0O0;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->showDownloadCancelDialog()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04b7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->showDownloadCancelDialog()V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object v0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p1, 0x12

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->tryCancelDownload(Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmDownload : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VVFeature"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO00o;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO00o;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_3

    .line 9
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVFeature$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    const v2, 0x7f12038a

    const/high16 v3, 0x42c80000    # 100.0f

    const/16 v4, 0x12

    const/16 v5, 0x1000

    const/16 v6, 0x10

    const/4 v7, 0x1

    const v8, 0x7f1209dc

    const/4 v9, 0x0

    if-nez v1, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    .line 4
    iget-object v1, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    if-eq v10, v5, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onDownloadAndInstallStart(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->showImageDownloading()V

    .line 9
    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object/from16 v10, p1

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 14
    iget-object v12, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 16
    invoke-static {v10}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v12

    const-string v13, "VVFeature"

    if-eq v12, v6, :cond_b

    const/16 v14, 0x100

    if-eq v12, v14, :cond_a

    if-eq v12, v5, :cond_7

    goto/16 :goto_2

    .line 17
    :cond_7
    invoke-static {v10}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v10

    if-eqz v10, :cond_8

    .line 18
    iget-object v12, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    if-nez v12, :cond_9

    .line 19
    :cond_8
    invoke-direct {p0, v11}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onDownloadAndInstallStart(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->showImageDownloading()V

    .line 21
    :cond_9
    iget-object v11, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v14

    int-to-float v10, v10

    div-float/2addr v10, v3

    float-to-double v5, v10

    invoke-virtual {v14, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 22
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallFailed()V

    goto/16 :goto_2

    .line 24
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v10, v4, :cond_f

    const/16 v5, 0x13

    if-eq v10, v5, :cond_e

    const/16 v5, 0x16

    if-eq v10, v5, :cond_d

    const/16 v5, 0x17

    if-eq v10, v5, :cond_c

    goto/16 :goto_2

    .line 25
    :cond_c
    invoke-direct {p0, v11}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstalled(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :cond_d
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v11

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    const-wide/16 v10, 0x320

    invoke-virtual {v5, v6, v10, v11}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 29
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f11004e

    invoke-interface {v6, v10, v11}, Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;->getModeDrawableRes(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 30
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 32
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v9}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 33
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v6, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string v10, "**"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    sget-object v10, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    sget-object v11, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO0OO;

    invoke-virtual {v5, v6, v10, v11}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V

    .line 34
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 35
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    goto :goto_2

    .line 36
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    .line 37
    iget-object v5, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/16 v5, 0x1000

    const/16 v6, 0x10

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

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
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallStateChanged(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public setFeatureInstallListener(Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    return-void
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    return-void
.end method

.method public setFixedMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    return-void
.end method

.method public setFrom(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mSrcContainerViewId:I

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mSrcFragmentInfo:I

    return-void
.end method

.method public showImageDownloading()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f080488

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 5
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method
