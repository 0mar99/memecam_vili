.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;
.super Landroid/os/Handler;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
