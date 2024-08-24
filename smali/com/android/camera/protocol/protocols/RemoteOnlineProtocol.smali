.class public interface abstract Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;
.super Ljava/lang/Object;
.source "RemoteOnlineProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract connect(I)V
.end method

.method public abstract disconnect(I)V
.end method

.method public abstract initialize()V
.end method

.method public abstract isConnectionSuspended()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract release()V
.end method

.method public abstract setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V
.end method

.method public abstract setLayoutType(I)V
.end method

.method public abstract setRecordingState(I)V
.end method

.method public abstract startNetworkServer()V
.end method

.method public abstract startStreaming(Ljava/lang/String;Landroid/view/Surface;)V
.end method

.method public abstract stopNetworkServer()V
.end method

.method public abstract stopStreaming()V
.end method
