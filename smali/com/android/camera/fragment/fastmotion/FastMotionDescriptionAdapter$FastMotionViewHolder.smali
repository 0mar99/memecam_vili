.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FastMotionDescriptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastMotionViewHolder"
.end annotation


# instance fields
.field public mCoverView:Landroid/view/View;

.field public mSpaceView:Landroid/view/View;

.field public mTextDesc:Landroid/widget/TextView;

.field public mTextTitle:Landroid/widget/TextView;

.field public mVideoDesc:Landroid/widget/TextView;

.field public mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sans-serif-light"

    const/4 v2, 0x0

    const v3, 0x7f0a0180

    if-ne v0, v3, :cond_0

    const v0, 0x7f0a0182

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0181

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextDesc:Landroid/widget/TextView;

    const v0, 0x7f0a0192

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mSpaceView:Landroid/view/View;

    const-string p1, "mipro-regular"

    .line 6
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextTitle:Landroid/widget/TextView;

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 8
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextDesc:Landroid/widget/TextView;

    invoke-static {p0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a0183

    if-ne v0, v3, :cond_1

    const v0, 0x7f0a0185

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoDesc:Landroid/widget/TextView;

    .line 12
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoDesc:Landroid/widget/TextView;

    invoke-static {v1, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0187

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FastmotionTextureVideoView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    const v0, 0x7f0a0184

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method
