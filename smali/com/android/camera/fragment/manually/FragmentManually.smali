.class public Lcom/android/camera/fragment/manually/FragmentManually;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/protocol/protocols/ManuallyAdjust;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mCurrentAdjustType:I

.field public mIsSuperEISEnabled:Z

.field public mIsVideoRecordingPrepared:Z

.field public mManuallyComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field public mManuallyParent:Landroid/view/ViewGroup;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewItemWidth:F

.field public mRootView:Landroid/view/View;

.field public mSelectComponentData:Lcom/android/camera/data/data/ComponentData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getSelectIndex(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private initManually()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 4
    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getManuallyAdapter(ILandroid/view/View$OnClickListener;Ljava/util/List;I)Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ProExtra;->updateData()V

    .line 7
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setRotate(I)V

    return-void
.end method

.method private initManuallyDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->setFixedFocusLens(Z)V

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecordingPrepared:Z

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    return-object p0
.end method

.method private initRecyclerView(I)I
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManually()V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return p1
.end method

.method private isReinitNeeded(III)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0xb4

    const/16 v0, 0xa7

    if-eq p3, v0, :cond_2

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    return v1

    :cond_2
    if-ne p2, p1, :cond_3

    return v1

    .line 2
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p1

    .line 3
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private reInitManuallyLayout(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->isReinitNeeded(III)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(I)I

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(I)I

    :goto_0
    if-nez p1, :cond_4

    if-eqz p4, :cond_4

    const/16 p1, 0xa7

    if-eq p2, p1, :cond_3

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_4
    return-void
.end method

.method private removeExtra()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2b

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 3
    invoke-interface {p0, v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, v1, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceUpdateManualView(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf7

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d009a

    return p0
.end method

.method public getSelectComponentData()Lcom/android/camera/data/data/ComponentData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mSelectComponentData:Lcom/android/camera/data/data/ComponentData;

    return-object p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0282

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const v0, 0x7f0a028d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 5
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentManually$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_recycler_view"

    invoke-direct {p1, p0, v1, v2}, Lcom/android/camera/fragment/manually/FragmentManually$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 10
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 6
    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {p2, p1, p0}, Lcom/android/camera/protocol/protocols/ProExtra;->notifyDataChanged(II)V

    :cond_1
    return-void
.end method

.method public notifyDataSetChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManually$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/manually/FragmentManually$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutVisible(Z)V

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "M_manual_"

    const-string v4, "manual_edit_tab_hide"

    .line 7
    invoke-static {v1, v4, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    .line 9
    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 10
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return v0

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to disabled"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to doing action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentData;

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mSelectComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    .line 9
    sget-object v2, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->getSelectedTitle()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_2

    if-ne v2, v5, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    .line 12
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_7

    .line 13
    invoke-interface {v7}, Lcom/android/camera/protocol/protocols/ProExtra;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 14
    invoke-interface {v7}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 15
    sget-object v0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick FragmentManuallyExtra hide"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    goto :goto_2

    .line 18
    :cond_4
    sget-object v3, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onClick FragmentManuallyExtra reset"

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-interface {v7, v0}, Lcom/android/camera/protocol/protocols/ProExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_2

    .line 21
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onClick FragmentManuallyExtra show"

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v6, 0x3

    .line 23
    invoke-interface {v0, v6}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v6

    const/16 v8, 0xfe

    if-eq v6, v8, :cond_6

    const/16 v6, 0x2b

    new-array v3, v3, [I

    .line 24
    invoke-interface {v0, v6, v3}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v3

    invoke-interface {v0, v4, v3}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    .line 27
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 28
    :cond_7
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/manually/FragmentManually;->getSelectIndex(I)I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->getSelectedTitle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->getSelectIndex(I)I

    move-result p0

    if-eq p0, v5, :cond_9

    .line 31
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_9
    if-eqz v7, :cond_a

    .line 32
    invoke-interface {v7}, Lcom/android/camera/protocol/protocols/ProExtra;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 33
    invoke-interface {v7, v4}, Lcom/android/camera/protocol/protocols/ProExtra;->setClickEnable(Z)V

    :cond_a
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public onRecordingPrepare()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecordingPrepared:Z

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f120815

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(I)I

    const/16 v1, 0xb4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    return-void
.end method

.method public onRecordingStop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecordingPrepared:Z

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(I)I

    const/16 v1, 0xb4

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xa7

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->reInitManuallyLayout(IIILjava/util/List;)V

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

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

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setRotate(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/ProExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public resetManually()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 4
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v1

    .line 5
    :goto_1
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentData;

    .line 7
    instance-of v7, v6, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-eqz v7, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 11
    invoke-virtual {v6}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v5, v4

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eq v2, v1, :cond_7

    if-eq v5, v1, :cond_7

    if-eqz v0, :cond_6

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentData;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ProExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 16
    :cond_8
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->resetManuallyParameters(Ljava/util/List;)V

    .line 17
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public resetManuallyUnselected()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ProExtra;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ProExtra;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public setManuallyLayoutVisible(Z)V
    .locals 3

    const/16 v0, 0xa7

    const/16 v1, 0xb4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    goto :goto_3

    .line 7
    :cond_3
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x4

    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 10
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    return-void
.end method

.method public updateEVState(I)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, 0x7735940

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-lez v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v7}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->setDisabled(Z)V

    if-eqz v7, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->disableUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 14
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ProExtra;->getCurrentTitle()I

    move-result p1

    const v0, 0x7f12076a

    if-ne p1, v0, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    :cond_3
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRootView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    return-void
.end method
