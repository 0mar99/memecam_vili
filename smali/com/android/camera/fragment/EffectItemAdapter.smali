.class public Lcom/android/camera/fragment/EffectItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EffectItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;,
        Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;,
        Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;,
        Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;,
        Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;,
        Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EffectItemAdapter"


# instance fields
.field public mComponentData:Lcom/android/camera/data/data/ComponentData;

.field public final mContext:Landroid/content/Context;

.field public mDegree:I

.field public mDisplayRotation:I

.field public mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

.field public mEglCore:Lcom/android/camera/ui/gl/EglCore;

.field public mIsMasterFilter:Z

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mSupportRealtimeEffect:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mIsMasterFilter:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mIsMasterFilter:Z

    .line 8
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 11
    iput-boolean p3, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/ui/gl/EglCore;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mIsMasterFilter:Z

    .line 14
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 17
    iput-boolean p3, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    .line 18
    iput-object p4, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/EffectItemAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/EffectItemAdapter;->TAG:Ljava/lang/String;

    const-string v0, "mComponentData = null "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/fragment/EffectItemAdapter;->TAG:Ljava/lang/String;

    const-string v0, " getItems() = null "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;

    .line 3
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1, p2, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    .line 5
    iget-boolean p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setRotation(F)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a015e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDisplayRotation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 11
    :cond_0
    instance-of p2, p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;

    if-eqz p2, :cond_3

    .line 12
    check-cast p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;

    const/4 p2, 0x0

    .line 13
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    .line 15
    iget-boolean v0, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result v0

    iget v2, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->index:I

    if-eq v0, v2, :cond_1

    .line 16
    iput-boolean p2, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean p2, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result p0

    iget p2, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->index:I

    if-ne p0, p2, :cond_2

    .line 18
    iput-boolean v1, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    .line 19
    :cond_2
    :goto_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p2, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    invoke-virtual {p0, p2}, Landroid/view/View;->setActivated(Z)V

    .line 20
    iget-object p0, p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    .line 21
    iget-boolean p1, p3, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;->select:Z

    invoke-static {p0, p1, v1}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0046

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;-><init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;Lcom/android/camera/ui/gl/EglCore;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0047

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;-><init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;)V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-object p2
.end method

.method public setAccessible(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12047d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1200af

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO;-><init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDisplayRotation:I

    return-void
.end method

.method public setMasterFilterStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mIsMasterFilter:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDegree:I

    return-void
.end method

.method public updateData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
