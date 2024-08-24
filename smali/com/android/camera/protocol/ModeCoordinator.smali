.class public interface abstract Lcom/android/camera/protocol/ModeCoordinator;
.super Ljava/lang/Object;
.source "ModeCoordinator.java"


# virtual methods
.method public abstract attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;TP;)V"
        }
    .end annotation
.end method

.method public abstract detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;TP;)V"
        }
    .end annotation
.end method

.method public abstract getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)TP;"
        }
    .end annotation
.end method

.method public abstract getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)",
            "Ljava/util/Optional<",
            "TP;>;"
        }
    .end annotation
.end method
