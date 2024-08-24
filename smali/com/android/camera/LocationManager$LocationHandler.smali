.class public Lcom/android/camera/LocationManager$LocationHandler;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocationManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationHandler;->this$0:Lcom/android/camera/LocationManager;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/LocationManager$LocationHandler;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {p0}, Lcom/android/camera/LocationManager;->access$200(Lcom/android/camera/LocationManager;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/LocationManager$LocationHandler;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {p0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)V

    :goto_0
    return-void
.end method
