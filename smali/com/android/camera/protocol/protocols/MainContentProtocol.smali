.class public interface abstract Lcom/android/camera/protocol/protocols/MainContentProtocol;
.super Ljava/lang/Object;
.source "MainContentProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;
.implements Lcom/android/camera/protocol/protocols/EffectCropViewController;
.implements Lcom/android/camera/protocol/protocols/IndicatorProtocol;
.implements Lcom/android/camera/protocol/protocols/RoundCoverProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/MainContentProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    return-object v0
.end method


# virtual methods
.method public abstract animBlackCover()V
.end method

.method public abstract checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
.end method

.method public abstract getFocusX()I
.end method

.method public abstract getFocusY()I
.end method

.method public abstract getMaskCoverIsVisible()Z
.end method

.method public abstract isFocusViewMoving()Z
.end method

.method public abstract isSplitFocusExposureDown()Z
.end method

.method public abstract onViewTouchEvent(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract performHapticFeedback(I)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract setIdPhotoBoxVisible(Z)V
.end method

.method public abstract setMaskCoverVisibility(Z)Z
.end method

.method public abstract setPreviewAspectRatio(F)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method

.method public abstract updateMaskCover(ZI)V
.end method
