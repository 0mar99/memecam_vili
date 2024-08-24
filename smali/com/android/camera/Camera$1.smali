.class public Lcom/android/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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
    iput-object p1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalNotification(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;I)I

    .line 6
    iget-object p0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->updateThermal(I)V

    return-void
.end method
