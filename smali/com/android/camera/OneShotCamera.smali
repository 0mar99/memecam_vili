.class public Lcom/android/camera/OneShotCamera;
.super Lcom/android/camera/Camera;
.source "OneShotCamera.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/OneShotCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivity(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string v1, "createActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/Camera;->createActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyActivity()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string v1, "destroyActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->destroyActivity()V

    return-void
.end method

.method public pauseActivity()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->pauseActivity()V

    return-void
.end method

.method public resumeActivity()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->resumeActivity()V

    return-void
.end method

.method public startActivity()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->startActivity()V

    return-void
.end method

.method public stopActivity()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopActivity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->stopActivity()V

    return-void
.end method
