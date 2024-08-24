.class public Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "LocationItemHolder.java"


# instance fields
.field public mIndex:I

.field public mSelectedIndicator:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mTextView:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mIndex:I

    const v0, 0x7f0a04fe

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a04fd

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mIndex:I

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mIndex:I

    return p0
.end method

.method public getSelectedIndicator()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public updateSelectItem(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/LocationItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
