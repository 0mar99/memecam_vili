.class public Lcom/android/camera/fragment/lighting/FragmentLighting;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentLighting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;,
        Lcom/android/camera/fragment/lighting/FragmentLighting$ItemPadding;
    }
.end annotation


# static fields
.field public static STATE_HIDDEN:I

.field public static STATE_SHOW:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

.field public mCurrentIndex:I

.field public mHolderWidth:I

.field public mLastIndex:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mLightParent:Landroid/widget/LinearLayout;

.field public mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRemoveFragment:Z

.field public mRootView:Landroid/view/View;

.field public mTotalWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/lighting/FragmentLighting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/lighting/FragmentLighting;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput v0, Lcom/android/camera/fragment/lighting/FragmentLighting;->STATE_SHOW:I

    const/4 v0, 0x2

    .line 3
    sput v0, Lcom/android/camera/fragment/lighting/FragmentLighting;->STATE_HIDDEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLastIndex:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    return-void
.end method

.method private hideLightingLayout()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    .line 2
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->getFragmentInto()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRemoveFragment:Z

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->showOrHideLighting(Z)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    return v2
.end method

.method private notifyItemChanged(II)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    .line 2
    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    const/4 v3, -0x1

    if-le p1, v3, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 5
    iget-object v5, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const v4, 0x7f12047d

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v4, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    if-le p2, v3, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0, p1, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private onDismissFinished()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xab

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xa1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb7

    if-ne v1, v2, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/lighting/FragmentLighting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x8000

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-interface {p2, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setFilter(I)V

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-interface {p2, v2, v0, v1, v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLastIndex:I

    .line 16
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/lighting/FragmentLighting;->scrollIfNeed(I)V

    .line 18
    iget p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLastIndex:I

    iget p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/lighting/FragmentLighting;->notifyItemChanged(II)V

    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLastIndex:I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff7

    return p0
.end method

.method public getLastIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLastIndex:I

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0060

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a0223

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0224

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightParent:Landroid/widget/LinearLayout;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4x3"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightParent:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 11
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_2

    .line 15
    :cond_2
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v4, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Lcom/android/camera/data/data/runing/ComponentRunningLighting;)V

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 19
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "lighting_list"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 23
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 24
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 25
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 26
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 27
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLighting$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/lighting/FragmentLighting$ItemPadding;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mTotalWidth:I

    .line 30
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07036a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mHolderWidth:I

    goto :goto_3

    .line 32
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070367

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mHolderWidth:I

    .line 33
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object v0

    .line 35
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    iput v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mCurrentIndex:I

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method public isAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x21

    new-array v0, v1, [I

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    const/4 p1, 0x3

    new-array v0, v1, [I

    .line 3
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_1
    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    const/16 v0, 0xab

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->hideLightingLayout()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->onItemSelected(IZ)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRemoveFragment:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRemoveFragment:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->onDismissFinished()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    const/16 v1, 0xab

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->hideLightingLayout()Z

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->reInit()V

    :cond_0
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

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/lighting/FragmentLighting;->onBackEvent(I)Z

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
    .locals 4
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
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const v3, 0x7f0a0100

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_2
    if-ge v1, p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mLightingAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public reInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/lighting/FragmentLighting;->setItemInCenter(I)V

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

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method
