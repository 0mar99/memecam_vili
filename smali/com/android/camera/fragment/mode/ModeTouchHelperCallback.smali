.class public Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ModeTouchHelperCallback.java"


# static fields
.field public static final MAX_TOP_ITEM_COUNT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ModeTouchHelperCallback"


# instance fields
.field public isFull:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

.field public mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

.field public mTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/fragment/mode/IMoreMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Lcom/android/camera/fragment/mode/IMoreMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->isFull:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mTargetList:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mHandler:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mItems:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    return-void
.end method


# virtual methods
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
    iget-object v4, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    if-ge p2, v3, :cond_2

    sub-int/2addr p2, v0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p1

    div-int p1, p2, p1

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    aput p1, v1, v2

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

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
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    div-int v3, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p0

    rem-int/2addr p2, p0

    add-int/2addr p2, v0

    aput p2, v1, v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ge v0, v3, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-le v0, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_5

    .line 6
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    if-ge v0, v3, :cond_5

    move v0, v2

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->isFull:Z

    if-nez p1, :cond_3

    .line 10
    sget-object p1, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    const-string p2, "favorite mode full!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->isFull:Z

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    const p1, 0x7f120581

    invoke-static {p0, p1, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCommonModeFull()V

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mTargetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I

    move-result-object p1

    .line 6
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120578

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 7
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12057a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12057b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    :goto_2
    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onItemDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f99999a    # 1.2f

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    .line 3
    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v0, v1}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1, v0}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    :goto_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onMove] current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mItems:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mItems:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x2

    invoke-static {v3, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mTargetList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I

    move-result-object p3

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback$1;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback$1;-><init>(Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;[I)V

    const-wide/16 p2, 0x64

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 2
    sget-object p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    const-string p1, "[onMoved]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSelectedChanged] viewHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->onItemDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p1, :cond_0

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->isFull:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->isFull:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mTargetList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120577

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
