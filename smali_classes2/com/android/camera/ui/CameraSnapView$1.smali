.class public Lcom/android/camera/ui/CameraSnapView$1;
.super Landroid/os/Handler;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/CameraSnapView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CameraSnapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapForceUp()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->access$202(Lcom/android/camera/ui/CameraSnapView;Z)Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapCancelOut()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelIn()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->access$202(Lcom/android/camera/ui/CameraSnapView;Z)Z

    .line 8
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelOut()V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->access$102(Lcom/android/camera/ui/CameraSnapView;F)F

    .line 10
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapDragging()V

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->access$102(Lcom/android/camera/ui/CameraSnapView;F)F

    .line 12
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPress()V

    goto :goto_0

    .line 13
    :pswitch_6
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapClick()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
