.class public Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "DisplayTipDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayFoldTipDialog"


# instance fields
.field public mAnimRawResId:I

.field public mExitView:Landroid/widget/FrameLayout;

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mTextView:Landroid/widget/TextView;

.field public mTipContentResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0167

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0035

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d0037

    .line 3
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    const p1, 0x7f0a0167

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mExitView:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03f6

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0269

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    iget p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    if-lez p2, :cond_2

    .line 9
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070731

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iget p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr p3, p1

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 15
    iget p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 18
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    if-lez p1, :cond_3

    .line 19
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_4
    return-object v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimRawResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    return-void
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTipText(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    return-void
.end method
