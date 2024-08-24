.class public Lcom/android/camera/ui/HorizontalSlideView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalSlideView;->startScaleAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;

.field public final synthetic val$isDown:Z

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->val$state:I

    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->val$isDown:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->val$state:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$702(Lcom/android/camera/ui/HorizontalSlideView;I)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->val$isDown:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$602(Lcom/android/camera/ui/HorizontalSlideView;F)F

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->val$isDown:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$6;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
