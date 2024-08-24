.class public Lcom/android/camera/Camera$13;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->checkPermissionAndCTA(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/Camera$13;->onDismissSucceeded()V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;ZZ)V

    return-void
.end method
