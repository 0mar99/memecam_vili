.class public Lcom/android/camera/fragment/top/FragmentTopConfig$2;
.super Ljava/lang/Object;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfig;->showHdrOrFlashAnim(Landroid/view/View;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field public final synthetic val$componentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field public final synthetic val$componentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

.field public final synthetic val$imageView:Lcom/android/camera/ui/ColorImageView;

.field public final synthetic val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iput-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    iput-object p5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setEnableFlashAnim(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setEnableHdrAnim(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setEnableFlashAnim(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setEnableHdrAnim(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setEnableFlashAnim(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$componentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setEnableHdrAnim(Z)V

    return-void
.end method
