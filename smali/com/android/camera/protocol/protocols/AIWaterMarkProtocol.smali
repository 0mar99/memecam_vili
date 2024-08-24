.class public interface abstract Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;
.super Ljava/lang/Object;
.source "AIWaterMarkProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract moveWatermarkLayout(II)V
.end method

.method public abstract setSuperMoonTextVisibleWhileZoom(I)V
.end method

.method public abstract setWatermarkVisible(I)V
.end method

.method public abstract updateTopAlert(Z)V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
.end method
