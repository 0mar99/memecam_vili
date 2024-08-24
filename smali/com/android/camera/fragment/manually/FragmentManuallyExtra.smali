.class public Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManuallyExtra.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/ProExtra;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/FragmentManuallyExtra$ItemPadding;,
        Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfe

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAutoButton:Lcom/android/camera/ui/ActivateImageView;

.field public mAutoButtonLayout:Landroid/widget/LinearLayout;

.field public mCurrentTitle:I

.field public mData:Lcom/android/camera/data/data/ComponentData;

.field public mExtraList:Landroidx/recyclerview/widget/RecyclerView;

.field public mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHorizontalViewLayout:Landroid/widget/LinearLayout;

.field public mManuallyExtraLayout:Landroid/view/View;

.field public mNeedAnimation:Z

.field public mRootView:Landroid/view/View;

.field public mRootViewWidth:F

.field public mTargetKey:I

.field public mTargetView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method private animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p3}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private animateShowView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 4
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 5
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 6
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12074b -> :sswitch_3
        0x7f12076a -> :sswitch_3
        0x7f120805 -> :sswitch_2
        0x7f120815 -> :sswitch_1
        0x7f120844 -> :sswitch_3
        0x7f120864 -> :sswitch_0
    .end sparse-switch
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v2, v3, p1, v4, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    const p1, 0x7f12074b

    const v3, 0x7f0703c0

    if-eq v0, p1, :cond_1

    const p1, 0x7f12076a

    if-eq v0, p1, :cond_0

    const p1, 0x7f120844

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 11
    invoke-virtual {p1, v0, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0703be

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 16
    invoke-virtual {p1, v0, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v0, v3, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v0, 0x7f12089b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "0"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, v4, v4}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mRootViewWidth:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "manually_extra_list"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;->setScrollEnabled(Z)V

    .line 12
    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    .line 4
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 8
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v2, 0x7f12089b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    sget-object v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSlideFocusView: container invisible"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 16
    sget-object v2, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSlideFocusView: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703c0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 24
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v1

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_extra_list"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;->setScrollEnabled(Z)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$ItemPadding;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0oO()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ui/ActivateImageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->updateSelectColor()V

    :cond_2
    :goto_0
    return-void
.end method

.method private toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method public animateOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    const/4 v1, 0x0

    .line 3
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0ooOOo/OooO0O0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0ooOOo/OooO0O0;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfe

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d009c

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0286

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyExtraLayout:Landroid/view/View;

    const v0, 0x7f0a0287

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0285

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0284

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0283

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoImageView(Landroid/content/Context;)Lcom/android/camera/ui/ActivateImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->refreshColor()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setExtraVisibility(Z)Z

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

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
    sget-object p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to doing action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    if-lez v0, :cond_2

    .line 7
    sget-object v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "0"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 9
    :sswitch_0
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 16
    :sswitch_1
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v5

    .line 19
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 20
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 22
    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v7, "0"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 23
    :sswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 24
    :sswitch_3
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v5

    .line 27
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 28
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 30
    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v7, "0"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12074b -> :sswitch_3
        0x7f120805 -> :sswitch_2
        0x7f120844 -> :sswitch_1
        0x7f120864 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyExtraLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setMaskCoverVisibility(Z)Z

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->getModuleIndex()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 4
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->getModuleIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v3

    const-string/jumbo p0, "onManuallyDataChanged canceled receiver %d sender %d"

    .line 6
    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v4

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v5

    const/16 v6, 0x3e8

    const-string v7, "0"

    const/4 v8, 0x7

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    .line 11
    :sswitch_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    const/16 p4, 0x9

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p4, v4, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 14
    :cond_5
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :sswitch_1
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    const/4 p4, 0x6

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p4, v4, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 19
    :cond_6
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto/16 :goto_1

    .line 22
    :sswitch_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, p0}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    move v3, v4

    goto/16 :goto_1

    :sswitch_3
    const-string p2, "manual"

    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 24
    move-object p2, p1

    check-cast p2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V

    .line 25
    :cond_7
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    if-eqz p4, :cond_8

    if-nez v2, :cond_8

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    :cond_8
    if-eqz p4, :cond_b

    const/4 p0, 0x5

    .line 28
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, v4, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_1

    .line 29
    :sswitch_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    const/16 p2, 0x8

    .line 31
    iget p4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p4}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p2, v4, p4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 32
    :cond_9
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto :goto_1

    .line 35
    :sswitch_5
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v8, v4, p4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 38
    :cond_a
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    .line 41
    :cond_b
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 42
    invoke-interface {p0, p5}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->updateEVState(I)V

    :cond_c
    if-eqz v3, :cond_d

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    .line 44
    invoke-interface {p1, v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    goto :goto_2

    .line 45
    :cond_d
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->refreshExtraMenu()V

    :goto_2
    if-eqz p0, :cond_e

    .line 46
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->notifyDataSetChange()V

    :cond_e
    return-void

    .line 47
    :cond_f
    :goto_3
    sget-object p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onManuallyDataChanged ignored"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f12074b -> :sswitch_5
        0x7f12076a -> :sswitch_4
        0x7f120805 -> :sswitch_3
        0x7f120815 -> :sswitch_2
        0x7f120844 -> :sswitch_1
        0x7f120864 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

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

    return-void
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
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->setDegree(I)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-eqz p2, :cond_6

    .line 11
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    const v1, 0x7f120805

    if-ne v0, v1, :cond_5

    .line 12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p0, 0x43340000    # 180.0f

    .line 13
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    return-void

    .line 15
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public resetData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setExtraVisibility(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyExtraLayout:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyExtraLayout:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyExtraLayout:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetKey:I

    .line 3
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentManuallyWB;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v2, 0x7f120805

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703c0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, v3, v3}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v0, 0x7f1204e8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public toUpdateAutoButton()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public updateData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result p2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    :goto_0
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mRootViewWidth:F

    const/4 p2, 0x1

    .line 11
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->getSelectComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-nez p1, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method
