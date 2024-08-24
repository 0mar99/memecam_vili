.class public Lcom/android/camera/ui/HorizontalSlideView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalSlideView;->startScrollAnimator(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;

.field public final synthetic val$selectPointX:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->val$selectPointX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$200(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$200(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->val$selectPointX:F

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$300(Lcom/android/camera/ui/HorizontalSlideView;F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$2;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
