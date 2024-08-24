.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialog()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/CameraSnapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->removeLastSegment()V

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "showReverseConfirmDialog onClick positive"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/MiLiveModule;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/ILiveModule;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/module/ILiveModule;->doReverse()V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "showReverseConfirmDialog skip!!!"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
