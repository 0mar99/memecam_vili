.class public interface abstract Lcom/android/camera/protocol/protocols/BackStack;
.super Ljava/lang/Object;
.source "BackStack.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/BackStack;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/BackStack;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BackStack;

    return-object v0
.end method


# virtual methods
.method public abstract addInBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation
.end method

.method public abstract handleBackStackFromKeyBack()Z
.end method

.method public abstract handleBackStackFromShutter()V
.end method

.method public abstract handleBackStackFromTapDown(II)Z
.end method

.method public abstract handleBackStackFromTimerBurstShutter()V
.end method

.method public abstract removeBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation
.end method
