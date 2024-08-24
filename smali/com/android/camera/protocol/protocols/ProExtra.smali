.class public interface abstract Lcom/android/camera/protocol/protocols/ProExtra;
.super Ljava/lang/Object;
.source "ProExtra.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ProExtra;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/ProExtra;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/ProExtra;

    return-object v0
.end method


# virtual methods
.method public abstract animateOut()V
.end method

.method public abstract getCurrentTitle()I
.end method

.method public abstract isAdded()Z
.end method

.method public abstract notifyDataChanged(II)V
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract resetData(Lcom/android/camera/data/data/ComponentData;)V
.end method

.method public abstract setClickEnable(Z)V
.end method

.method public abstract setDegree(I)V
.end method

.method public abstract setExtraVisibility(Z)Z
.end method

.method public abstract showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V
.end method

.method public abstract toUpdateAutoButton()V
.end method

.method public abstract updateData()V
.end method
