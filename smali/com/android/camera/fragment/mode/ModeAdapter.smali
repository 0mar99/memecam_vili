.class public Lcom/android/camera/fragment/mode/ModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/mode/ModeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_ENTER:I = 0x2

.field public static final FLAG_SWITCH:I = 0x4

.field public static final MAX_TOP_ITEM_COUNT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ModeAdapter"

.field public static final TYPE_CAPTURE:I = 0x3

.field public static final TYPE_DOWNLOADING:I = 0x9

.field public static final TYPE_EDIT:I = 0x5

.field public static final TYPE_FOOTER:I = 0x6

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_LINE:I = 0x2

.field public static final TYPE_PENDING_DOWNLOAD:I = 0x7

.field public static final TYPE_SCANNER:I = 0x8

.field public static final TYPE_VIDEO:I = 0x4


# instance fields
.field public mAnimFlags:I

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mContext:Landroid/content/Context;

.field public mDegree:F

.field public mFragmentType:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMiScanner:Lcom/android/camera/scanner/IMiScanner;

.field public mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field public mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

.field public mVmFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void
.end method

.method private getItem(I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0Oo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 p1, 0x0

    const v0, 0x7f08038c

    const/4 v1, -0x1

    const v2, 0x7f120592

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 10
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    invoke-interface {p0}, Lcom/android/camera/scanner/IMiScanner;->startScannerApp()V

    return-void
.end method

.method public calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    add-int/lit8 p1, v3, -0x1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 3
    iget-object v4, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    if-ge p2, v3, :cond_2

    sub-int/2addr p2, v0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p1

    div-int p1, p2, p1

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    aput p1, v1, v2

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p0

    rem-int/2addr p2, p0

    add-int/2addr p2, v0

    aput p2, v1, v0

    goto :goto_2

    :cond_2
    if-le p2, v3, :cond_3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v0

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    div-int v3, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p0

    rem-int/2addr p2, p0

    add-int/2addr p2, v0

    aput p2, v1, v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public createChangeItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/fragment/mode/IMoreMode;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-object v0
.end method

.method public createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;-><init>(Landroid/view/View;)V

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->getAnimView()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0Oo()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/2addr p0, v1

    :cond_0
    return p0

    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    add-int/2addr p0, v1

    return p0

    .line 4
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x2

    if-eq v0, v3, :cond_7

    const/4 v5, 0x3

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_a

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_3

    return v4

    :cond_3
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_4

    return v5

    :cond_4
    const/16 v1, 0xa2

    if-ne v0, v1, :cond_5

    const/4 p0, 0x4

    return p0

    .line 4
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->modeDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x9

    return p0

    .line 5
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 6
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_8

    return v1

    .line 7
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0Oo()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_9

    const/16 p0, 0x8

    return p0

    .line 8
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_a
    if-nez p1, :cond_b

    return v3

    .line 9
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_c

    return v1

    .line 10
    :cond_c
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 11
    :cond_d
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getRotate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    return p0
.end method

.method public getViewHolderLayoutRes()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const p0, 0x7f0d0152

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0151

    :goto_0
    return p0
.end method

.method public isDataChange()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    invoke-interface {v2, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "data lost."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$1;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_2

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 6
    :cond_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 8
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9
    iget-object v8, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v10, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v10}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v10

    iget-object v11, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_21

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v7, :cond_21

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v4, :cond_21

    .line 13
    invoke-direct {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    .line 14
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    .line 16
    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget v10, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 19
    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_4
    :goto_0
    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 23
    :cond_5
    iget v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const/4 v10, -0x1

    const/4 v11, 0x7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x5

    if-eq v4, v10, :cond_16

    .line 24
    iget-object v10, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    iget v14, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v14, v6, :cond_6

    iget v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mNewIconRes:I

    :cond_6
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v4, v7, :cond_7

    .line 26
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v4

    iget-object v10, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-interface {v4, v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setMoreModePopUpIconColor(Landroid/widget/ImageView;)V

    .line 27
    :cond_7
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0O0o()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x3f61cac1    # 0.882f

    goto :goto_1

    .line 28
    :cond_8
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00O()Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x3f5020c5    # 0.813f

    goto :goto_1

    :cond_9
    move v4, v12

    .line 29
    :goto_1
    iget-object v10, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 30
    iget-object v10, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 31
    iget v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setRotation(F)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    if-eq v4, v13, :cond_15

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    const/16 v10, 0x8

    if-ne v4, v10, :cond_a

    goto/16 :goto_5

    .line 33
    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    if-eq v4, v11, :cond_c

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    const/16 v10, 0x9

    if-ne v4, v10, :cond_b

    goto :goto_2

    .line 34
    :cond_b
    invoke-virtual {v1, v9, v7}, Lcom/android/camera/fragment/mode/ModeViewHolder;->needDownload(ZZ)V

    goto/16 :goto_6

    .line 35
    :cond_c
    :goto_2
    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v4, :cond_d

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v4

    const-class v10, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v4, v10}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 37
    :cond_d
    iget v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-eq v4, v8, :cond_e

    move v4, v7

    goto :goto_3

    :cond_e
    move v4, v9

    :goto_3
    invoke-virtual {v1, v4, v9}, Lcom/android/camera/fragment/mode/ModeViewHolder;->needDownload(ZZ)V

    .line 38
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v4}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v4, :cond_14

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v3

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v8

    .line 43
    sget-object v10, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onBindViewHolder scope = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", progress = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x1000

    const/16 v14, 0x10

    if-ne v8, v14, :cond_f

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v13, 0x11

    if-eq v15, v13, :cond_10

    :cond_f
    if-ne v8, v10, :cond_11

    .line 45
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setNameDownloading()V

    goto :goto_4

    :cond_11
    if-ne v8, v14, :cond_12

    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v13, 0x12

    if-ne v4, v13, :cond_12

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setNameWaiting()V

    :cond_12
    :goto_4
    if-ne v8, v10, :cond_13

    .line 48
    invoke-virtual {v1, v3, v9}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setProgress(IZ)V

    goto :goto_6

    .line 49
    :cond_13
    invoke-virtual {v1, v9, v9}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setProgress(IZ)V

    goto :goto_6

    .line 50
    :cond_14
    invoke-virtual {v1, v9, v9}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setProgress(IZ)V

    goto :goto_6

    .line 51
    :cond_15
    :goto_5
    invoke-virtual {v1, v9, v9}, Lcom/android/camera/fragment/mode/ModeViewHolder;->needDownload(ZZ)V

    .line 52
    :cond_16
    :goto_6
    sget-object v3, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onBindViewHolder "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", viewType = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v6, :cond_1a

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v5, :cond_17

    goto :goto_7

    .line 55
    :cond_17
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 56
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v3, v6, :cond_18

    .line 57
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f06032f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_18
    if-ne v3, v7, :cond_19

    .line 60
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setMoreModePopUpTextColor(Landroid/widget/TextView;)V

    goto :goto_8

    .line 61
    :cond_19
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f060375

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 64
    :cond_1a
    :goto_7
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 65
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f060322

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    :goto_8
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_21

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_1b

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v11, :cond_1b

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_21

    goto :goto_9

    :cond_1b
    const/4 v4, 0x5

    .line 72
    :goto_9
    iget-object v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1e

    .line 73
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v4, :cond_1c

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    invoke-static {v3, v7}, Lcom/android/camera/display/Display;->getMoreModeTabRow(IZ)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 74
    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_1d

    .line 75
    :cond_1c
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    .line 76
    :cond_1d
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;->getAnimView()Landroid/view/View;

    move-result-object v1

    sub-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowNewAnimation(Landroid/view/View;I)V

    goto :goto_a

    .line 77
    :cond_1e
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1f

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    invoke-static {v3, v9}, Lcom/android/camera/display/Display;->getMoreModeTabRow(IZ)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 78
    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_20

    .line 79
    :cond_1f
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    .line 80
    :cond_20
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowOldAnimation(Landroid/view/View;I)V

    :cond_21
    :goto_a
    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/mode/ModeViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    if-eqz v0, :cond_4

    .line 84
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    .line 85
    iget p3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->type:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    sget-object p3, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolderPayloads ,position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", viewType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", payloads = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->progress:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->downloadState:I

    const/16 p3, 0x11

    if-ne p2, p3, :cond_2

    .line 90
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setNameDownloading()V

    goto :goto_0

    :cond_2
    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setNameWaiting()V

    goto :goto_0

    .line 92
    :cond_3
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->progress:I

    const/4 p2, 0x1

    .line 93
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setProgress(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeViewHolder;
    .locals 7

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    if-ne p2, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014f

    .line 4
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/camera/fragment/mode/ModeAdapter;->createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p2, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0150

    .line 7
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/camera/fragment/mode/ModeAdapter;->createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    :cond_2
    if-ne p2, v1, :cond_3

    .line 9
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v5, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 11
    invoke-interface {v5}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/camera/fragment/mode/ModeAdapter;->createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getViewHolderLayoutRes()I

    move-result v4

    invoke-virtual {v0, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/fragment/mode/ModeAdapter;->createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v1, v2, :cond_5

    .line 18
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    if-ne p2, v1, :cond_6

    .line 19
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0ooOoO/OooO0o0;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0ooOoO/OooO0o0;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 20
    :cond_6
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :goto_1
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setRotation(F)V

    :goto_2
    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeViewHolder;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/mode/ModeViewHolder;->setRotation(F)V

    return-void
.end method

.method public setAnimFlags(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
