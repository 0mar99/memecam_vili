.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field public final synthetic val$animView:Lcom/android/camera/ui/AnimationView;

.field public final synthetic val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

.field public final synthetic val$thumbnailLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AnimationView;Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$animView:Lcom/android/camera/ui/AnimationView;

    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$thumbnailLayout:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$animView:Lcom/android/camera/ui/AnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    invoke-virtual {p1}, Lcom/android/camera/ui/AdjustAnimationView;->clearBitmap()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$animView:Lcom/android/camera/ui/AnimationView;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;->val$thumbnailLayout:Landroid/view/View;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V

    return-void
.end method
