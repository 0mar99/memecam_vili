.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;
.super Ljava/lang/Object;
.source "FragmentLiveReview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    iget-object v0, v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showExitConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-static {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$1800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-static {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$1800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-static {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$1800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$1802(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const-string v0, "mi_live_click_cancel"

    .line 5
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    return-void
.end method
