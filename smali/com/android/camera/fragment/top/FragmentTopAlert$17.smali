.class public Lcom/android/camera/fragment/top/FragmentTopAlert$17;
.super Ljava/lang/Object;
.source "FragmentTopAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->showCloseConfirm()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$17;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showCloseConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$17;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1500(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveAudioChanges;->impl2()Lcom/android/camera/protocol/protocols/LiveAudioChanges;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->impl2()Lcom/android/camera/protocol/protocols/milive/LiveRecordState;

    move-result-object v0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/LiveAudioChanges;->clearAudio()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf5

    aput v2, v0, v1

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method
