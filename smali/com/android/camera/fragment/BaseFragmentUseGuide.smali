.class public Lcom/android/camera/fragment/BaseFragmentUseGuide;
.super Lcom/android/camera/fragment/BaseFragment;
.source "BaseFragmentUseGuide.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseFragmentUseGuide"


# instance fields
.field public mBackButton:Landroid/widget/ImageView;

.field public mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/BaseVideoItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayerItemChangeListenerImpl:Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mScrollState:I

.field public final mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;"
        }
    .end annotation
.end field

.field public final mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mScrollState:I

    .line 4
    new-instance v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;

    new-instance v1, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;

    invoke-direct {v1}, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;-><init>(Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;

    invoke-direct {v0}, Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mPlayerItemChangeListenerImpl:Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;

    .line 6
    new-instance v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mPlayerItemChangeListenerImpl:Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;

    invoke-direct {v0, v1}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;-><init>(Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/BaseFragmentUseGuide;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mScrollState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/BaseFragmentUseGuide;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mScrollState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/BaseFragmentUseGuide;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/BaseFragmentUseGuide;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/BaseFragmentUseGuide;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/BaseFragmentUseGuide;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    return-object p0
.end method

.method private initAdapter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragmentUseGuide;->fillList(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;-><init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;Landroid/content/Context;Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentUseGuide$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/BaseFragmentUseGuide$1;-><init>(Lcom/android/camera/fragment/BaseFragmentUseGuide;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 10
    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;->onScrollStateIdle(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const-string p1, "BaseFragmentUseGuide"

    const-string/jumbo v0, "onClick BackButton"

    .line 9
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentUseGuide;->onBackEvent(I)Z

    return-void
.end method

.method public fillList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/BaseVideoItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0057

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const-string v0, "BaseFragmentUseGuide"

    const-string v1, "initView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0a0087

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00d5

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a00d3

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mBackButton:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42b40000    # 90.0f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mBackButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08024c

    invoke-interface {v3, v4, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mBackButton:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v0, 0x30

    .line 13
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 14
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getUseGuideBackMarginEnd(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v0, 0x800005

    .line 17
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 18
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getUseGuideBackMarginEnd(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mBackButton:Landroid/widget/ImageView;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0o;-><init>(Lcom/android/camera/fragment/BaseFragmentUseGuide;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentUseGuide;->initAdapter()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "BaseFragmentUseGuide"

    const-string/jumbo v1, "onDestroy"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->terminate()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string p0, "BaseFragmentUseGuide"

    const-string/jumbo v0, "onPause"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const-string v0, "BaseFragmentUseGuide"

    const-string/jumbo v1, "onResume"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0o0;-><init>(Lcom/android/camera/fragment/BaseFragmentUseGuide;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->resumeMediaPlayer()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->resetMediaPlayer()V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
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
