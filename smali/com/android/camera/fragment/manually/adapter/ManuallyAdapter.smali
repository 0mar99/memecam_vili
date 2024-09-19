.class public Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManuallyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mComponentDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentMode:I

.field public mDegree:F

.field public mItemWidth:I

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mSelectedTitle:I


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mComponentDataList:Ljava/util/List;

    .line 5
    iput p4, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mItemWidth:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mComponentDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mSelectedTitle:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mComponentDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/ComponentData;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mDegree:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const v0, 0x7f0a0288

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0289

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028a

    .line 8
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-lez v4, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 13
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->disableUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p2, Lcom/android/camera/data/data/ComponentData;->mIsKeepValueWhenDisabled:Z

    if-nez v4, :cond_0

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    invoke-virtual {p2, p0}, Lcom/android/camera/data/data/ComponentData;->getDefaultValueDisplayString(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 17
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v2, v8}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 21
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 22
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 23
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 24
    :cond_0
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v4

    iget v9, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mSelectedTitle:I

    if-ne v4, v9, :cond_2

    goto :goto_0

    :cond_2
    move v3, v7

    :goto_0
    if-eqz v3, :cond_3

    .line 26
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v8

    .line 27
    :goto_1
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->disableUpdate()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 28
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    move-object v3, v2

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 32
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 33
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 34
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    move-object v4, v2

    check-cast v4, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 40
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 41
    :goto_2
    iget-boolean v3, p2, Lcom/android/camera/data/data/ComponentData;->mIsDisplayStringFromResourceId:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 42
    iget v3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    invoke-virtual {p2, v3}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 43
    :cond_5
    iget v3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    invoke-virtual {p2, v3}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v3

    if-ne v3, v8, :cond_6

    move-object v3, v4

    goto :goto_3

    .line 44
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 46
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 49
    :cond_7
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v3

    const v6, 0x7f120864

    if-ne v3, v6, :cond_8

    .line 50
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    .line 51
    invoke-virtual {p2, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 52
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    const-string v3, ""

    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget v3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    invoke-virtual {p2, v3}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    if-ne v3, v8, :cond_9

    return-void

    .line 56
    :cond_9
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mCurrentMode:I

    invoke-virtual {p2, p0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedShadowDrawable(I)I

    move-result p0

    if-eq p0, v8, :cond_a

    .line 58
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 59
    :cond_a
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_5
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_6
    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getContentDescriptionString()I

    move-result p0

    if-lez p0, :cond_b

    .line 62
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/camera/data/data/ComponentData;->getContentDescriptionString()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 63
    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    :goto_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120084

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d009e

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mItemWidth:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 6
    new-instance p0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setRotate(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mDegree:F

    return-void
.end method

.method public setSelectedTitle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->mSelectedTitle:I

    return-void
.end method
