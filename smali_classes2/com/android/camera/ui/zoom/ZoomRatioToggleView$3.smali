.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRatioToggleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTranslationAnimationShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field public final synthetic val$translationX:F

.field public final synthetic val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomTextImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomTextImageView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$translationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$translationX:F

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method
