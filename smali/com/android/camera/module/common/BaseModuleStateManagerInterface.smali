.class public interface abstract Lcom/android/camera/module/common/BaseModuleStateManagerInterface;
.super Ljava/lang/Object;
.source "BaseModuleStateManagerInterface.java"


# virtual methods
.method public abstract getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;
.end method

.method public abstract getCameraPreviewRect()Landroid/graphics/Rect;
.end method

.method public abstract getFlashAutoModeState()Ljava/lang/String;
.end method

.method public abstract getNormalFilterId()I
.end method

.method public abstract getSurfaceCreatedTimestamp()J
.end method

.method public abstract getTriggerMode()I
.end method

.method public abstract getUnInterruptableReason()Ljava/lang/String;
.end method

.method public abstract getUserVisibleRect()Landroid/graphics/Rect;
.end method

.method public abstract getVolumeKeyFunction()Ljava/lang/String;
.end method

.method public abstract getZoomRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZoomScaled()F
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isCreated()Z
.end method

.method public abstract isDeparted()Z
.end method

.method public abstract isFaceDetectionEnabled()Z
.end method

.method public abstract isFaceDetectionStarted()Z
.end method

.method public abstract isGradienterOn()Z
.end method

.method public abstract isIgnoreTouchEvent()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPortraitLightingOn()Z
.end method

.method public abstract isTrackEyeOn()Z
.end method

.method public abstract isTrackFocusOn()Z
.end method

.method public abstract isVolumeLongPress()Z
.end method

.method public abstract isZooming()Z
.end method

.method public abstract setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
.end method

.method public abstract setCameraPreviewRect(Landroid/graphics/Rect;)V
.end method

.method public abstract setCreated(Z)V
.end method

.method public abstract setDeparted(Z)V
.end method

.method public abstract setFaceDetectionEnabled(Z)V
.end method

.method public abstract setFaceDetectionStarted(Z)V
.end method

.method public abstract setFlashAutoModeState(Ljava/lang/String;)V
.end method

.method public abstract setGradienterOn(Z)V
.end method

.method public abstract setIgnoreTouchEvent(Z)V
.end method

.method public abstract setNormalFilterId(I)V
.end method

.method public abstract setPaused(Z)V
.end method

.method public abstract setPortraitLightingOn(Z)V
.end method

.method public abstract setSurfaceCreatedTimestamp(J)V
.end method

.method public abstract setTrackEyeOn(Z)V
.end method

.method public abstract setTrackFocusOn(Z)V
.end method

.method public abstract setTriggerMode(I)V
.end method

.method public abstract setUnInterruptableReason(Ljava/lang/String;)V
.end method

.method public abstract setUserVisibleRect(Landroid/graphics/Rect;)V
.end method

.method public abstract setVolumeKeyFunction(Ljava/lang/String;)V
.end method

.method public abstract setVolumeLongPress(Z)V
.end method

.method public abstract setZoomRange(Landroid/util/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setZoomScaled(F)V
.end method

.method public abstract setZooming(Z)V
.end method
