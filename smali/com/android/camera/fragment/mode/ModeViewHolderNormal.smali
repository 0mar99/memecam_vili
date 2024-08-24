.class public Lcom/android/camera/fragment/mode/ModeViewHolderNormal;
.super Lcom/android/camera/fragment/mode/ModeViewHolder;
.source "ModeViewHolderNormal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeViewHolderNormal"


# instance fields
.field public mFgView:Landroid/view/View;

.field public mIconLayout:Landroid/widget/FrameLayout;

.field public mProgressView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02c1

    const v2, 0x7f0a02bd

    const v3, 0x7f0a02bc

    const v4, 0x7f0a02bf

    if-ne v0, v4, :cond_0

    const v0, 0x7f0a02be

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mFgView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f0a02c0

    if-ne v0, v4, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mFgView:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private addModeBackground(Landroid/view/ViewGroup;)Lcom/android/camera/ui/ModeBackground;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/camera/ui/ModeBackground;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeBackground;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a02b3

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private addWaterBox(Landroid/view/ViewGroup;)Lcom/android/camera/ui/WaterBox;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/ui/WaterBox;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/WaterBox;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/WaterBox;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/WaterBox;->setValue(FZ)V

    const v1, 0x7f0a02b3

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method


# virtual methods
.method public getAnimView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public needDownload(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needDownload need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a02bf

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    instance-of v0, p0, Lcom/android/camera/ui/NormalRoundView;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Lcom/android/camera/ui/NormalRoundView;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/NormalRoundView;->setFill(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a02c0

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const p1, 0x7f060329

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNameDownloading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f120388

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setNameWaiting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f12038a

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setProgress(IZ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",anim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x64

    const v6, 0x7f0a02bf

    if-ne v0, v6, :cond_3

    if-ne p1, v5, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-eq p2, v3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5
    iput-object v1, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    .line 6
    :cond_0
    invoke-virtual {p0, v4, v2}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->needDownload(ZZ)V

    :cond_1
    if-ge p1, v5, :cond_8

    if-ltz p1, :cond_8

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->addModeBackground(Landroid/view/ViewGroup;)Lcom/android/camera/ui/ModeBackground;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    check-cast p2, Lcom/android/camera/ui/ModeBackground;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ModeBackground;->setProgress(I)V

    if-lez p1, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->setNameDownloading()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v6, 0x7f0a02c0

    if-ne v0, v6, :cond_8

    if-ne p1, v5, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 15
    iput-object v1, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    .line 16
    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->needDownload(ZZ)V

    :cond_5
    if-ge p1, v5, :cond_8

    if-ltz p1, :cond_8

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->addWaterBox(Landroid/view/ViewGroup;)Lcom/android/camera/ui/WaterBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_7

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 21
    check-cast v0, Lcom/android/camera/ui/WaterBox;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/WaterBox;->setValue(FZ)V

    :cond_7
    if-lez p1, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->setNameDownloading()V

    :cond_8
    :goto_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02bf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02c0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolderNormal;->mFgView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1
    :goto_0
    return-void
.end method
