.class public interface abstract Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;
.super Ljava/lang/Object;
.source "MiBeautyProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/expandable/Expandable;
.implements Lcom/android/camera/protocol/protocols/MenuSwitch;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract clearBeauty()V
.end method

.method public abstract dismiss(I)V
.end method

.method public abstract getDistanceForWM()I
.end method

.method public abstract getSupportedBeautyItems(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V
.end method

.method public abstract isBeautyPanelShow()Z
.end method

.method public abstract isSkinColorShow()Z
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract oneKeyCloseMutexSpecifyBeautyType(Ljava/lang/String;)V
.end method

.method public abstract resetBeauty()V
.end method

.method public abstract updateBeautyMutex()V
.end method
