.class public Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->showGuide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;

.field public final synthetic val$mode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iput p2, p0, Lcom/android/camera/Camera$5;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setSkipChangeModule(Z)Lcom/android/camera/module/loader/StartControl;

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/Camera$5;->val$mode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->showGuide(I)V

    return-void
.end method
