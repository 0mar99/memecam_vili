.class public interface abstract Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;
.super Ljava/lang/Object;
.source "AutoZoomViewProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
.end method

.method public abstract isAutoZoomActive()Z
.end method

.method public abstract isAutoZoomEnabled()Z
.end method

.method public abstract isAutoZoomViewEnabled()Z
.end method

.method public abstract onAutoZoomStarted()V
.end method

.method public abstract onAutoZoomStopped()V
.end method

.method public abstract onTrackingStarted(Landroid/graphics/RectF;)V
.end method

.method public abstract onTrackingStopped(I)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setVideoCastLayoutType(I)V
.end method
