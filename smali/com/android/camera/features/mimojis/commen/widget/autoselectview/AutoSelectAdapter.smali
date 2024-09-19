.class public Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoSelectAdapter.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/autoselectview/OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;",
        ">;",
        "Lcom/android/camera/features/mimojis/commen/widget/autoselectview/OnPositionChangedListener;"
    }
.end annotation


# instance fields
.field public mDdataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mLastMiddlePosition:I

.field public mLastSelectPosition:I

.field public onSelectListener:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    .line 4
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getLastSelectPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;->setData(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00ed

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onMoveMiddlePoisionChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 v1, 0x1

    if-eq p2, p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 4
    :cond_0
    iget p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    if-eq p2, p1, :cond_2

    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 7
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSelectedPositionChanged(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    if-eq v0, p1, :cond_1

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    .line 7
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectedPositionFinish(I)V

    :cond_1
    return-void
.end method

.method public onSelectedPositionFinish(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectListener:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectListener:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;->onSelectListener(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLastSelectPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    return-void
.end method

.method public setOnSelectListener(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectListener:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;

    return-void
.end method

.method public declared-synchronized updateData(ILcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDataAlpha(II)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    invoke-virtual {v0, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setAlpha(I)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectViewHolder;->setData(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
