.class public Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "TemplateMakeupsFragment.java"

# interfaces
.implements Lcom/android/camera/NoClipChildrenLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TemplateMakeupsFragment"


# instance fields
.field public mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mItemMargin:I

.field public mItemWidth:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

.field public mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

.field public mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

.field public mNeedScroll:Z

.field public mSelectedPosition:I

.field public mTargetClipChildren:Z

.field public mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    return-void
.end method

.method private calcItemWidthAndNeedScroll()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTotalWidth:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTotalWidth:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    .line 6
    div-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mNeedScroll:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mNeedScroll:Z

    .line 9
    iget v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTotalWidth:I

    iget v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int v3, v2, v0

    .line 10
    :goto_0
    iput v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemWidth:I

    return-void
.end method

.method private getPositionByType()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->isItemListNonEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMakeupsType()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/TypeItem;

    .line 5
    iget-object v3, v3, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private final initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->getSupportedBeautyItems(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private isItemListNonEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reSelectItem()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->getPositionByType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->onItemSelected(IZ)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    iget v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->setItemInCenter(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_4

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_4
    return v1
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "12"

    return-object p0
.end method

.method public initExtraType()V
    .locals 0

    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$2;-><init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;)V

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTargetClipChildren:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTargetClipChildren:Z

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    const v0, 0x7f0a0280

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    new-instance p1, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    .line 7
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->calcItemWidthAndNeedScroll()V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->isNeedScroll()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 15
    :cond_1
    new-instance p1, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    .line 16
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setRotation(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    iget v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 23
    new-instance p1, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {p1}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 25
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 26
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 29
    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->setItemInCenter(I)V

    return-void
.end method

.method public isNeedScroll()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mNeedScroll:Z

    return p0
.end method

.method public notifyItemChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->isItemListNonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f12047d

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    if-le p2, v0, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->isItemListNonEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
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
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 0

    return-void
.end method

.method public onClearClick()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00bc

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemSelected(IZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->getShineType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/TypeItem;

    iget-object p2, p2, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/TypeItem;

    iget v2, v2, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v3, 0x1

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->scrollIfNeed(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->notifyItemChanged(II)V

    :cond_3
    return-void
.end method

.method public onResetClick()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->reSelectItem()V

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onViewCreatedAndVisibleToUser(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->isItemListNonEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    iget v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget p1, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, p1, v2}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setRotation(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setDegree(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->setDegree(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setRotation(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setNoClip(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mTargetClipChildren:Z

    :cond_1
    return-void
.end method
