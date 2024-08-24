.class public Lcom/android/camera/RotateDialogController$1;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureAutoDownloadSelect(Z)V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->updateAutoDownloadFeaturePreference(Z)V

    return-void
.end method
