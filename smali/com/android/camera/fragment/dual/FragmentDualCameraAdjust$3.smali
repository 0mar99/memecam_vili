.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initRatioToggleAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)V

    return-void
.end method
