.class public Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WatermarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAllowLocationAccess:Z

.field public mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field public mDegree:I

.field public mFragment:Landroidx/fragment/app/Fragment;

.field public mHorizontalPadding:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mLocationCTADialog:Lmiuix/appcompat/app/AlertDialog;

.field public mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mSelectedIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/util/List;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mHorizontalPadding:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLocationCTADialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mAllowLocationAccess:Z

    .line 6
    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    iput-object p4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    iput p3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mSelectedIndex:I

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07013c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mHorizontalPadding:I

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 13
    iput-object p5, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getListener(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->apply(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->showPermissionNotAskDialog()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private apply(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 2

    const-string v0, "ai_trigger"

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->updateASDStatus()V

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setCurrentKey(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setIWatermarkEnable(Z)V

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p3

    .line 8
    invoke-interface {p3, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->showWatermarkSample(Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    .line 10
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onSelected(IZ)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xb

    if-eq p0, p2, :cond_3

    const/16 p2, 0xc

    if-eq p0, p2, :cond_3

    const-string p0, "ai_watermark_select"

    .line 12
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "attr_super_moon_effect_select"

    .line 14
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonClick(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonEffectKey(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private checkLocationPermission(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->startFromKeyGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    .line 4
    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/KeyguardManager;

    new-instance v9, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-virtual {v8, v6, v9}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 5
    invoke-virtual {v6, v7}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 6
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getListener(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z

    move-result v7

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 10
    invoke-direct {p0, p3, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->apply(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_2
    return-void
.end method

.method private getListener(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-object v0
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    if-le p2, v0, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getItemCount()I

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
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mHorizontalPadding:I

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    .line 10
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mHorizontalPadding:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setAccessible(Landroid/view/View;IZ)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {p2, p0, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const p0, 0x7f12047d

    :goto_1
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x7f1200af

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0O0;

    invoke-direct {p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0O0;-><init>(Landroid/view/View;)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private showPermissionNotAskDialog()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->startFromKeyGuard()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const v0, 0x7f1204b3

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1204c4

    .line 5
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0Oo;

    invoke-direct {v5, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0Oo;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f12034f

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0OO;

    invoke-direct {v9, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0OO;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V

    .line 7
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const v0, 0x7f1204b5

    .line 8
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1204c2

    .line 9
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO00o;

    invoke-direct {v5, p0, v1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO00o;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Landroidx/fragment/app/FragmentActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v0, 0x1040000

    .line 10
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0o0;

    invoke-direct {v9, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooooO/OooO0o0/OooO0o0;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V

    .line 11
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private updateASDStatus()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->impl2()Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->resetResult()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->updateASDForWatermark()V

    :cond_1
    return-void
.end method

.method private updateSelectItem(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->updateSelectItem(I)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->setAccessible(Landroid/view/View;IZ)V

    return-void
.end method

.method private updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_0
    return-void
.end method

.method private updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick startActivity Settings.ACTION_APPLICATION_DETAILS_SETTINGS positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->setGoDetailsSettings(Z)V

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick startActivity Settings.ACTION_APPLICATION_DETAILS_SETTINGS negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mSelectedIndex:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->bindHolder(ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->updateSelectItem(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;I)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;ILjava/util/List;)V
    .locals 2

    .line 8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setActivated(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->getSelectedIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->getSelectedIndicator()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->getImageView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    .line 16
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->setAccessible(Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p1, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Object can not cast to Integer"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "user touch the same item. do nothing."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    sget-object v3, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick: index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_1
    const-string v0, "longitude_latitude"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_2

    :sswitch_2
    const-string v0, "location_time_2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    :sswitch_3
    const-string v0, "location_time_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    .line 9
    invoke-direct {p0, v2, p1, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->apply(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0, v2, p1, v1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->checkLocationPermission(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_3
        0x241170a -> :sswitch_2
        0x708f48fc -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;
    .locals 3

    .line 2
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateViewHolder i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getWarterRecyclerviewItemLayout()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    aput-object p0, p2, v0

    .line 5
    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    return-object p1
.end method

.method public onSelected(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mSelectedIndex:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mSelectedIndex:I

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->scrollIfNeed(I)V

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mSelectedIndex:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->notifyItemChanged(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mDegree:I

    return-void
.end method

.method public startFromKeyGuard()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
