.class public Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentAmbilight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/ambilight/FragmentAmbilight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SceneModeItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;
    }
.end annotation


# instance fields
.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mSceneModes:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

.field public final synthetic this$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentConfigAmbilight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->this$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mSceneModes:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mSceneModes:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mSceneModes:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 11
    check-cast p1, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;

    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p0, p1, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;

    if-eqz p0, :cond_1

    .line 4
    check-cast p1, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;

    const/4 p0, 0x0

    .line 5
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 7
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setActivated(Z)V

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;->access$000(Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p3, p0, p2}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;->access$100(Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getAmbilightLayout()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter$AmbilightModeItemHolder;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;Landroid/view/View;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->this$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Lcom/android/camera/data/data/config/ComponentConfigAmbilight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->mSceneModes:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
