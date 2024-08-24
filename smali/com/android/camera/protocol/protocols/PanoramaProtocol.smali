.class public interface abstract Lcom/android/camera/protocol/protocols/PanoramaProtocol;
.super Ljava/lang/Object;
.source "PanoramaProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/PanoramaProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract getCurrentDirection()I
.end method

.method public abstract getPreivewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getThumbnailPreviewSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract initPreviewLayout(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract isShown()Z
.end method

.method public abstract onCaptureDirectionDecided(III)V
.end method

.method public abstract onPreviewMoving()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract resetShootUI()V
.end method

.method public abstract setDirectionPosition(Landroid/graphics/Point;I)V
.end method

.method public abstract setDirectionTooFast(ZI)V
.end method

.method public abstract setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setShootUI()V
.end method

.method public abstract showSmallPreview(Z)V
.end method

.method public abstract toggleCaptureDirection()V
.end method
