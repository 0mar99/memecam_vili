.class public Lcom/android/camera/fragment/top/FragmentTopConfig$5;
.super Ljava/lang/Object;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field public final synthetic val$backgroundOriginHeight:I

.field public final synthetic val$fromAlpha:I

.field public final synthetic val$toAlpha:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$backgroundOriginHeight:I

    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$fromAlpha:I

    iput p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$toAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$800(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$800(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$backgroundOriginHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$backgroundOriginHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    float-to-int v5, p1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    move v6, p1

    goto :goto_0

    :cond_0
    move v6, v5

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$fromAlpha:I

    iget v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$toAlpha:I

    invoke-interface/range {v0 .. v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->setBackgroundAlphaAndRadius(Lcom/android/camera/ui/ShapeBackGroundView;FIIII)V

    return-void
.end method
