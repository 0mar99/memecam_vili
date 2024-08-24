.class public Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModeSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ModeSelectView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeSelectView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeSelectView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->getModeFromTag(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget v2, v1, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/ModeSelectView;->isSameMode(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click to change mode, mCurMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget v3, v3, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_change_mode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget v2, v2, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iput v0, v2, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    .line 8
    iget-object v3, v2, Lcom/android/camera/ui/ModeSelectView;->mModeSelectedListener:Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/android/camera/ui/ModeSelectView;->getSelectPos()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/ModeSelectView;->getItemText(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;->onModeSelected(ILjava/lang/String;)V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget-object v3, v2, Lcom/android/camera/ui/ModeSelectView;->mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    iget-object v2, v2, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {v3, v2, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    .line 11
    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/ui/ModeSelectView;->scroll(II)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->onBindViewHolder(Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;I)V
    .locals 3

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mFitLayoutWidth:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getHeaderOffset(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x64

    const/4 v0, -0x1

    invoke-direct {p2, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 4
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v1, p2}, Lcom/android/camera/ui/ModeSelectView;->getItemText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v1, p2}, Lcom/android/camera/ui/ModeSelectView;->isItemSelected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f06032f

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ModeSelectView;->getModeByPos(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object p2, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    const-string v0, "[onCreateViewHolder] h&f"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;-><init>(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)V

    return-object p2

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0153

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 7
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo00;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo00;-><init>(Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;-><init>(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)V

    return-object p2
.end method
