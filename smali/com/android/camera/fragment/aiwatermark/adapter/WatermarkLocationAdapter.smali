.class public Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WatermarkLocationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectedIndex:I

.field public mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mSelectedIndex:I

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

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

.method public getSelectLocation()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mSelectedIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "error when getSelectLocation"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->bindHolder(ILjava/lang/String;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mSelectedIndex:I

    if-ne p0, p2, :cond_0

    .line 7
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f06039d

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->getSelectedIndicator()Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x7f06039c

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f06039f

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->getSelectedIndicator()Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x7f06039e

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mSelectedIndex:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Object can not cast to Integer"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;
    .locals 3

    .line 2
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateViewHolder i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d01a1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setDefaultSelect(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->mSelectedIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectItem(Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;I)V
    .locals 1

    .line 1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06039c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->getSelectedIndicator()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
