.class public Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;
.super Landroid/view/animation/LinearInterpolator;
.source "LevelBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;->animateIn(Lcom/android/camera/ui/ColorImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

.field public final synthetic val$iconView:Landroid/widget/ImageView;

.field public final synthetic val$imageView:Lcom/android/camera/ui/ColorImageView;

.field public final synthetic val$textImage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$textImage:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    iget-object v1, v1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    .line 3
    invoke-static {v1}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->access$700(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    iget-object v2, v2, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->baseNormalColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$textImage:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$3;->val$iconView:Landroid/widget/ImageView;

    check-cast p0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    return p1
.end method
