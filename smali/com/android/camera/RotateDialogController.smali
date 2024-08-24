.class public Lcom/android/camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field public static final ANIM_DURATION:J = 0x96L

.field public static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mDialogRootLayout:Landroid/view/View;

.field public mFadeInAnim:Landroid/view/animation/Animation;

.field public mFadeOutAnim:Landroid/view/animation/Animation;

.field public mLayoutResourceID:I

.field public mRotateDialog:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_0

    const p2, 0x7f0d017c

    .line 3
    :cond_0
    iput p2, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, -0x3

    if-eq p4, p3, :cond_2

    const/4 p2, -0x2

    if-eq p4, p2, :cond_1

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p0, 0x19

    if-eq p1, p0, :cond_1

    const/16 p0, 0x18

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic OooO0O0(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static createCustomView(Landroid/view/ViewGroup;Landroid/content/Context;IILjava/lang/Runnable;ILjava/lang/Runnable;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f0d00c7

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a04ac

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a04b0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a04b2

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 7
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OooOoo;

    invoke-direct {p2, p4}, LOooO0O0/OooO0O0/OooO00o/OooOoo;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a04b1

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(I)V

    .line 10
    new-instance p3, LOooO0O0/OooO0O0/OooO00o/OooOooo;

    invoke-direct {p3, p6}, LOooO0O0/OooO0O0/OooO00o/OooOooo;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/view/View;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    aput-object p2, p3, v0

    .line 11
    invoke-static {p3}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    return-object p0
.end method

.method private inflateDialogLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0384

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const v1, 0x7f0a0383

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    .line 7
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 8
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 9
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public static setDialogText(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/android/camera/RotateDialogController;->setDialogText(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method public static showCTADialog(Landroid/app/Activity;ILjava/lang/Runnable;ILjava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s_%s"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const v5, 0x7f120484

    .line 3
    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const v1, 0x7f120483

    .line 4
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0036

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    const v1, 0x7f120331

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    .line 7
    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0a044a

    .line 8
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/ui/ScreenHint;->setLinkClickEvent(Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 12
    invoke-virtual {v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 13
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/OooOoo0;

    invoke-direct {p0, p2}, LOooO0O0/OooO0O0/OooO00o/OooOoo0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/Oooo000;

    invoke-direct {p0, p4}, LOooO0O0/OooO0O0/OooO00o/Oooo000;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 15
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/OooOoOO;

    invoke-direct {p0, p5}, LOooO0O0/OooO0O0/OooO00o/OooOoOO;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showCircleProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;IZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showFeatureAutomaticDialog(Landroid/content/Context;Landroid/os/Handler;)Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_feature_auto_download_use_hint_shown"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120382

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12037f

    goto :goto_0

    :cond_0
    const v0, 0x7f12037e

    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f12037d

    new-instance v2, Lcom/android/camera/RotateDialogController$2;

    invoke-direct {v2, p1}, Lcom/android/camera/RotateDialogController$2;-><init>(Landroid/os/Handler;)V

    .line 7
    invoke-virtual {p0, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f12037c

    new-instance v0, Lcom/android/camera/RotateDialogController$1;

    invoke-direct {v0}, Lcom/android/camera/RotateDialogController$1;-><init>()V

    .line 8
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public static showLocationDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/RotateDialogController$3;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/RotateDialogController$3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/camera/RotateDialogController$4;

    invoke-direct {p1, p2}, Lcom/android/camera/RotateDialogController$4;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Lcom/android/camera2/DetachableClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera2/DetachableClickListener;

    move-result-object p1

    .line 2
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120359

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f120357

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f120358

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f12034f

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;I)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;IZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;IZ)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    .line 2
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 4
    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/16 p0, 0x64

    .line 6
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/RotateDialogController;->setDialogText(Landroid/view/View;)V

    return-object v0
.end method

.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p8

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 2
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooOooO;

    invoke-direct {v0, p4, p8, p6}, LOooO0O0/OooO0O0/OooO00o/OooOooO;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance p4, LOooO0O0/OooO0O0/OooO00o/OooOoO0;

    invoke-direct {p4, p9}, LOooO0O0/OooO0O0/OooO00o/OooOoO0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p4}, Lcom/android/camera2/DetachableClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera2/DetachableClickListener;

    move-result-object p4

    .line 3
    new-instance p6, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p6, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p6, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {p6, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 6
    invoke-virtual {p6, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p6, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 8
    sget-object p0, LOooO0O0/OooO0O0/OooO00o/OooOoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooOoO;

    .line 9
    invoke-virtual {p6, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p6, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_0
    if-eqz p7, :cond_1

    .line 11
    invoke-virtual {p6, p7, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_1
    if-eqz p5, :cond_2

    .line 12
    invoke-virtual {p6, p5, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 13
    :cond_2
    invoke-virtual {p6}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-virtual {p4, p0}, Lcom/android/camera2/DetachableClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    return-object p0
.end method


# virtual methods
.method public setOrientation(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->inflateDialogLayout()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
