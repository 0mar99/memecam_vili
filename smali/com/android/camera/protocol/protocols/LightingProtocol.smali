.class public interface abstract Lcom/android/camera/protocol/protocols/LightingProtocol;
.super Ljava/lang/Object;
.source "LightingProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/LightingProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LightingProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LightingProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/LightingProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract isFaceLocationOK()Z
.end method

.method public abstract isShowLightingView()Z
.end method

.method public abstract lightingCancel()V
.end method

.method public abstract lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
.end method

.method public abstract lightingStart()V
.end method

.method public abstract mimojiEnd()V
.end method

.method public abstract mimojiFaceDetect(I)V
.end method

.method public abstract mimojiStart()V
.end method

.method public abstract setLightingViewStatus(Z)V
.end method

.method public abstract setMimojiDetectTipType(I)V
.end method

.method public abstract showOrHideLightingView()Z
.end method

.method public abstract updateMimojiFaceDetectResultTip(Z)V
.end method
