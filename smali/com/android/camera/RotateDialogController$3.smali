.class public Lcom/android/camera/RotateDialogController$3;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showLocationDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$negative:Ljava/lang/Runnable;

.field public final synthetic val$positive:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/RotateDialogController$3;->val$positive:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$3;->val$negative:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$3;->val$positive:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$3;->val$negative:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
