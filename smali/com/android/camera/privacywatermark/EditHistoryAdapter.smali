.class public Lcom/android/camera/privacywatermark/EditHistoryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "EditHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;,
        Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/lang/String;",
        "Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mListener:Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;

    invoke-direct {v0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;-><init>()V

    sput-object v0, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->mListener:Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->mListener:Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;->onItemClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->onBindViewHolder(Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;->mHistoryItem:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTintDefaultDayNight(Landroid/view/View;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO00o;

    invoke-direct {v0, p0, p2}, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO00o;-><init>(Lcom/android/camera/privacywatermark/EditHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00e0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setEventListener(Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->mListener:Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
