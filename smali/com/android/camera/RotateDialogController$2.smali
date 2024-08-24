.class public Lcom/android/camera/RotateDialogController$2;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showFeatureAutomaticDialog(Landroid/content/Context;Landroid/os/Handler;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/RotateDialogController$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureAutoDownloadSelect(Z)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->updateAutoDownloadFeaturePreference(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$2;->val$handler:Landroid/os/Handler;

    const/16 p1, 0x9

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
