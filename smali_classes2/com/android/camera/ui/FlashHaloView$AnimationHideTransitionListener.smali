.class public Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "FlashHaloView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FlashHaloView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationHideTransitionListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FlashHaloView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FlashHaloView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/FlashHaloView;Lcom/android/camera/ui/FlashHaloView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;-><init>(Lcom/android/camera/ui/FlashHaloView;)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    const-string p1, "FlashHaloView"

    const-string/jumbo v0, "onCancel:   >hide<  "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    const-string p1, "FlashHaloView"

    const-string/jumbo v0, "onComplete:   >hide< "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/FlashHaloView$AnimationHideTransitionListener;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
