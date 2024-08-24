.class public interface abstract Lcom/android/camera/protocol/protocols/WideSelfieProtocol;
.super Ljava/lang/Object;
.source "WideSelfieProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/WideSelfieProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract initPreviewLayout(IIII)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract resetShootUI()V
.end method

.method public abstract setShootingUI()V
.end method

.method public abstract updateHintText(I)V
.end method

.method public abstract updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract updateThumbBackgroudLayout(ZZI)V
.end method
