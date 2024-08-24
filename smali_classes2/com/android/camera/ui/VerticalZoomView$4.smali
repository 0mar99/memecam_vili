.class public Lcom/android/camera/ui/VerticalZoomView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VerticalZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/VerticalZoomView;->startScrollAnimator(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/VerticalZoomView;

.field public final synthetic val$selectPointY:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/VerticalZoomView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    iput p2, p0, Lcom/android/camera/ui/VerticalZoomView$4;->val$selectPointY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/VerticalZoomView;->access$300(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/VerticalZoomView;->access$202(Lcom/android/camera/ui/VerticalZoomView;Z)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/VerticalZoomView;->access$300(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->val$selectPointY:F

    iput v0, p1, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/ui/VerticalZoomView;->access$202(Lcom/android/camera/ui/VerticalZoomView;Z)Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
