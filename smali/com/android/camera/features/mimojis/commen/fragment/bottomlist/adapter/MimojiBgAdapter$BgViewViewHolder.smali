.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.source "MimojiBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BgViewViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;",
        ">;"
    }
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public mItemChangeBg:Landroid/view/View;

.field public mSelectItemView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    invoke-static {p2, p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;I)V

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getMimojiBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mItemChangeBg:Landroid/view/View;

    const p1, 0x7f0a02a0

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a02a1

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mSelectItemView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getRotateViews()[Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public setData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;I)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mItemChangeBg:Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->imageView:Landroid/widget/ImageView;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->setMimojiBgColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getDescId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->isSelected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mSelectItemView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectFilterItemSelectorLayout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mSelectItemView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1200af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->mSelectItemView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;->setData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;I)V

    return-void
.end method
