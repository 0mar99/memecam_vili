.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/BottomPopupTips;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff9

.field public static final I_AI_TIP_DELAY_HIDE_MS:I = 0xbb8

.field public static final MSG_HIDE_AI_TIP:I = 0x2

.field public static final MSG_HIDE_QR_TIP:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static final TIP_DOC_MODE:I = 0x5

.field public static final TIP_ID_CARD:I = 0x4

.field public static final TIP_QR_ENTRY:I = 0x6


# instance fields
.field public final mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

.field public mCenterTipImage:Landroid/widget/ImageView;

.field public mCustomDisposable:Lio/reactivex/disposables/Disposable;

.field public mCustomRoot:Landroid/widget/FrameLayout;

.field public mDynamicImage:Landroid/widget/ImageView;

.field public mImageTipHandler:Landroid/os/Handler;

.field public mIsShowLyingDirectHint:Z

.field public mLeftTipExtraImage:Landroid/widget/ImageView;

.field public mLeftTipImage:Landroid/widget/ImageView;

.field public mLyingDirectHint:Landroid/widget/TextView;

.field public mNightCaptureExpTime:I

.field public mNormalDisposable:Lio/reactivex/disposables/Disposable;

.field public mNormalViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mPopupTipLabel:Ljava/lang/Integer;

.field public mPopupTipResult:Ljava/lang/String;

.field public mRightTipExtraImage:Landroid/widget/ImageView;

.field public mRightTipImage:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSubTipTag:I

.field public mSubTips:Landroid/view/View;

.field public mSubTipsText:Landroid/widget/TextView;

.field public mTipImageRoot:Landroid/widget/FrameLayout;

.field public mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    .line 8
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIdCard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showDoc(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showQrCode(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyCustomItem(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    return-void
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method private applyCustomItem(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string p1, "current fragment is not isAdded"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getCustomView()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;->onUpdate(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0OO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0OO;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private cancelUpdateTipImage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method private varargs checkRotate(Ljava/util/List;[Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs checkViews([Landroid/view/View;)V
    .locals 3

    .line 1
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs clearAllTag([Landroid/view/View;)V
    .locals 3

    .line 1
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTipBottomMargin(I)I
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    const v4, 0x7f0703e4

    if-eqz v3, :cond_3

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 8
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr p0, p1

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getSquareBottomCoverHeight()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const v5, 0x7f070106

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    add-int/2addr p0, v2

    goto :goto_2

    .line 14
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->visibleHeight()I

    move-result p0

    goto :goto_2

    .line 17
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v3

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070142

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 22
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 24
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 26
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 27
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :goto_2
    return p0
.end method

.method private hideZoomTipImage(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xad

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private inflateSubTips()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getBottomTipsBg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    const v1, 0x7f0a033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipsText:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private needUpdateSubTips(IZLjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1
    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 4
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isSubTipShowing(I)Z

    move-result p0

    if-eq p2, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getTipBottomMargin(I)I

    move-result p0

    .line 3
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, p0, :cond_0

    .line 4
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showAIDocTip()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method private showDoc(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->provideTransientZoomRatio(F)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0xba

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120107

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/protocol/protocols/ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipDoc()V

    return-void
.end method

.method private showIDCardTip()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method private showIdCard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0xa6

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipCard()V

    return-void
.end method

.method private showQrCode(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->impl2()Lcom/android/camera/protocol/protocols/CameraModuleSpecial;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getResult()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->showQRCodeResult(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipQrCode()V

    return-void
.end method

.method private updateCustomBg()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;->onUpdate(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDynamicImage()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0xbb8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v1, 0x7f0804a0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v1, 0x7f12090d

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setResult(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const-wide/16 v1, 0x3a98

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const-wide/16 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0O0;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfDocEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v1, 0x7f08023e

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v1, 0x7f120107

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    .line 21
    invoke-virtual {v0, v6, v7}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v4, v5}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo000;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo000;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfCardEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v1, 0x7f0805de

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v1, 0x7f12010f

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    .line 30
    invoke-virtual {v0, v6, v7}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v4, v5}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoo;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImageLayoutParams()V

    .line 35
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->build()Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/widget/ImageView;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Landroid/view/View;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isHideBySelf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onTipImageClick()V

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;Landroid/view/View;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click customItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isHideBySelf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onTipImageClick()V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string p1, "current fragment is not isAdded"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getPanelEntranceView(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)Landroid/widget/ImageView;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/android/camera/ui/ColorImageView;

    if-eqz v1, :cond_2

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_2
    if-eqz v0, :cond_d

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 7
    :cond_3
    instance-of v2, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    if-eqz v2, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOooo;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOooo;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/widget/ImageView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getRes()I

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 15
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBg()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBgResourceColor()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 16
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 20
    :goto_1
    instance-of v2, p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 21
    move-object v2, p1

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->getOnGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    move-result-object v2

    goto :goto_2

    :cond_9
    move-object v2, v3

    :goto_2
    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    .line 22
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 23
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)V

    goto :goto_3

    :cond_a
    move-object v1, v3

    .line 24
    :goto_3
    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/ColorImageView;->setGestureDetector(Landroid/view/GestureDetector;Lcom/android/camera/ui/ColorImageView$GestureCallback;)V

    .line 25
    :cond_b
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 26
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo00o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo00o;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const/4 p0, 0x1

    new-array p0, p0, [Landroid/view/View;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    .line 27
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 28
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_d

    .line 29
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_d
    :goto_4
    return-void
.end method

.method public checkClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public configRootLayoutParams(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string p1, "configRootLayoutParams, mRootView is null."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const v0, 0x7fffffff

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v1

    .line 10
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x1

    .line 13
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v2, v0, :cond_4

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    if-nez p2, :cond_5

    .line 16
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    if-le v0, v2, :cond_6

    if-eqz p1, :cond_6

    return-void

    .line 18
    :cond_6
    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 19
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;IILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_7

    .line 23
    new-instance p2, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p2, p0}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_7
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public directHideLyingDirectHint()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff9

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0065

    return p0
.end method

.method public getPanelEntranceView(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)Landroid/widget/ImageView;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    if-eqz v0, :cond_6

    .line 4
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->getGravity()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid gravity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    return-object p0

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    return-object p0

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    return-object p0

    .line 10
    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    return-object p0

    .line 11
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hideAiTips()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void
.end method

.method public hideAllTipImage(Z)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clearAllTag([Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOooO;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->setOnAnimationEnd(Ljava/lang/Runnable;)Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v1, p1, v7

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v8

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkViews([Landroid/view/View;)V

    return-void
.end method

.method public hideAllTips(Z)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    return-void
.end method

.method public hideNoDynamicTips()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clearAllTag([Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    .line 9
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    aput-object v8, v1, v3

    iget-object v8, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v8, v1, v4

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v4, v1, v6

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v4, v1, v7

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v4, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkViews([Landroid/view/View;)V

    .line 10
    iput v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12
    iput v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    return-void
.end method

.method public hideQrCodeTip()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0311

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0332

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0335

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0334

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0339

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0338

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a0150

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0111

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public isDynamicTipVisible(I)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x22

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    goto :goto_0

    :cond_2
    const/16 p1, 0x21

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    if-eqz v0, :cond_3

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    if-ne p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isNormalTagShowing(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v2

    if-ne v2, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public isSubTipShowing(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    if-ne p0, p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public needViewClear()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result p0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutParams(Ljava/util/List;Z)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    const/4 p1, 0x6

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x5

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

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

    const/4 p1, 0x6

    new-array p1, p1, [Landroid/view/View;

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x4

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 p3, 0x5

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCustomBg()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 6
    sget-object p1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v0, "Stop super night checker"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xba

    .line 7
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    sget-object p1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Exit near range mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa7

    .line 10
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onCreate: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    return-void
.end method

.method public onTipImageClick()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideZoomTipImage(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutParams(Ljava/util/List;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p2

    const/4 v3, 0x3

    if-nez p2, :cond_2

    if-ne p3, v3, :cond_3

    .line 6
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    .line 8
    :cond_3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    :cond_4
    const/4 p2, 0x5

    const/4 p3, 0x4

    if-ne v0, p1, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, p3

    .line 10
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    const/4 p1, 0x6

    new-array v0, p1, [Landroid/view/View;

    .line 12
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v1, v0, p3

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object p3, v0, p2

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigAiTip()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAiTips()V

    :cond_6
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 2
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    const/4 p2, 0x6

    new-array p2, p2, [Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    const/4 v1, 0x5

    aput-object v0, p2, v1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkRotate(Ljava/util/List;[Landroid/view/View;)V

    return-void
.end method

.method public reConfigAiTip()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 5
    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    .line 6
    sget-object v2, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAiState: maybe restore ai scene tip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipState(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public reConfigQrCodeTip()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xa3

    if-ne v2, v0, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 6
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    return v2

    :cond_3
    return v1
.end method

.method public reInitTipImage()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public showQrCodeTip(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigQrCodeTip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method public showTipGuideWindow(I)V
    .locals 0

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public varargs updateBg([Landroid/view/View;)V
    .locals 5

    .line 1
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBg()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBgResourceColor()I

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateDynamicImageLayoutParams()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070159

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5
    :goto_2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_7

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    .line 11
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v1

    .line 13
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isSubTipShowing(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0706f7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p0, 0xb4

    .line 18
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectShow(I)V

    goto :goto_3

    .line 19
    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public updateSubTip(IZLjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->needUpdateSubTips(IZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->inflateSubTips()V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 12
    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    if-eq p1, p2, :cond_5

    .line 13
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipsText:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120115

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "S"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipsText:Landroid/widget/TextView;

    const p1, 0x7f120628

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 16
    :cond_4
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    .line 17
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTipTag:I

    .line 18
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSubTips:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateTargetTipImage(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateTipImage()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTipImage mCustomRoot is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->impl2()Lcom/android/camera/protocol/protocols/CvLensProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AppController;

    if-eqz v0, :cond_6

    .line 8
    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/fragment/modeui/IModeUI;->getPanelEntranceItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 10
    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/fragment/modeui/IModeUI;->getPanelEntranceItems()Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    .line 13
    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v2

    const-class v3, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    .line 14
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0;

    .line 15
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 17
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    const-class v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    .line 19
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo00O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo00O;

    .line 20
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/util/Map;)V

    .line 22
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    :goto_3
    return-void
.end method

.method public updateTipState(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isPendingStopTimerBurst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v1, "[updateTipState]:  isInTimerBurstShotting, do not show tips"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIDCardTip()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIDocTip()V

    .line 11
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->activeTip()V

    goto :goto_2

    .line 12
    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivatingTip()V

    :goto_2
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703e5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method
