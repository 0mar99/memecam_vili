.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field public static sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    :goto_0
    return-void
.end method

.method public static cancelAnimator()V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    :cond_0
    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
