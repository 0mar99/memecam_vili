.class public interface abstract Lcom/android/camera/protocol/protocols/ManuallyValueChanged;
.super Ljava/lang/Object;
.source "ManuallyValueChanged.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ManuallyValueChanged;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    return-object v0
.end method


# virtual methods
.method public abstract getModuleIndex()I
.end method

.method public abstract onBokehFNumberValueChanged(Ljava/lang/String;)V
.end method

.method public abstract onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
.end method

.method public abstract onDualLensZooming(Z)V
.end method

.method public abstract onDualZoomValueChanged(FI)V
.end method

.method public abstract onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V
.end method

.method public abstract onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPictureStyleChanged()V
.end method

.method public abstract onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
.end method

.method public abstract resetManuallyParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSATIsZooming(Z)V
.end method
