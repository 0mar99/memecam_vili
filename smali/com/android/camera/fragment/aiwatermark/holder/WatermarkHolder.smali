.class public Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "WatermarkHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WatermarkHolder"


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mIndex:I

.field public mSelectedIndicator:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    const v0, 0x7f0a02a0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a02a1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    .line 7
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindHolder(ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResRvItem()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getImageView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    return p0
.end method

.method public getSelectedIndicator()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method public updateSelectItem(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectFilterItemSelectorLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
