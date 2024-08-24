.class public Lcom/android/camera/fragment/top/FragmentTopAlert$19;
.super Ljava/lang/Object;
.source "FragmentTopAlert.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->handleProVideoRecordingSimple(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f08049d

    invoke-interface {v0, p0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f08049d

    invoke-interface {v0, p0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$19;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
