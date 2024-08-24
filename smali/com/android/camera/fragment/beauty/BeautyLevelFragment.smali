.class public Lcom/android/camera/fragment/beauty/BeautyLevelFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BeautyLevelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mLayoutManager:Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

.field public mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

.field public mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->onLevelClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0095

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance p1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initBeautyItems()Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->provideItemHorizontalMargin()I

    move-result v1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v2, v4

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 12
    new-instance v0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyShowLevel()I

    move-result v0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->beautyLevelToPosition(II)I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setSelectedPosition(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onLevelClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object p0

    const-string p1, "i:0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomMenuProtocol;->impl()Ljava/util/Optional;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    if-nez p0, :cond_0

    if-lez p3, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/BottomMenuProtocol;

    invoke-interface {p0, p5}, Lcom/android/camera/protocol/protocols/BottomMenuProtocol;->animateShineBeauty(Z)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p3, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/BottomMenuProtocol;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/BottomMenuProtocol;->animateShineBeauty(Z)V

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClick: level="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautySwitchChanged(Ljava/lang/String;)V

    .line 8
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    .line 9
    invoke-static {p5}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method


# virtual methods
.method public beautyLevelToPosition(II)I
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method public initBeautyItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const v2, 0x7f08043e

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    const/4 v2, 0x4

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public provideItemHorizontalMargin()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07012e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
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
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setRotation(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setDegree(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setRotation(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setEnableClick(Z)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setEnableClick(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelBeautyAdapter:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->setEnableClick(Z)V

    :cond_1
    :goto_0
    return-void
.end method
