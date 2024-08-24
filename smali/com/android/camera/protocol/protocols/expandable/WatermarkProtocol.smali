.class public interface abstract Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;
.super Ljava/lang/Object;
.source "WatermarkProtocol.java"

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
            "Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract getDistanceForWM()I
.end method

.method public abstract isWatermarkPanelShow()Z
.end method

.method public abstract requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z
.end method

.method public abstract setGoDetailsSettings(Z)V
.end method

.method public abstract startDottedLineAnimation(Landroid/view/View;)V
.end method
