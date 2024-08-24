.class public interface abstract Lcom/android/camera/protocol/protocols/IndicatorProtocol;
.super Ljava/lang/Object;
.source "IndicatorProtocol.java"


# virtual methods
.method public abstract clearFocusView(I)V
.end method

.method public abstract clearIndicator(I)V
.end method

.method public abstract getActiveIndicator()I
.end method

.method public abstract getFaces()[Lcom/android/camera2/CameraHardwareFace;
.end method

.method public abstract getFocusRect(I)Landroid/graphics/RectF;
.end method

.method public abstract getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;
.end method

.method public abstract hideFaceAnimator()V
.end method

.method public abstract initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
.end method

.method public abstract isEvAdjusted(Z)Z
.end method

.method public abstract isFaceExists(I)Z
.end method

.method public abstract isFaceStable(I)Z
.end method

.method public abstract isFocusViewVisible()Z
.end method

.method public abstract isIndicatorVisible(I)Z
.end method

.method public abstract isNeedExposure(I)Z
.end method

.method public abstract isTrackFocusViewVisible()Z
.end method

.method public abstract onUserInteraction()V
.end method

.method public abstract reShowFaceRect()V
.end method

.method public abstract recreateFaceAnimationView()V
.end method

.method public abstract setActiveIndicator(I)V
.end method

.method public abstract setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V
.end method

.method public abstract setCameraDisplayOrientation(I)V
.end method

.method public abstract setEvAdjustVisible(Z)V
.end method

.method public abstract setEvAdjustable(Z)V
.end method

.method public abstract setEvMappingValue(F)V
.end method

.method public abstract setFaces(I[Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract setFocusViewPosition(III)V
.end method

.method public abstract setFocusViewType(Z)V
.end method

.method public abstract setPinFace(Z)V
.end method

.method public abstract setSkipDrawFace(Z)V
.end method

.method public abstract setSkipDrawTrackFocus(Z)V
.end method

.method public abstract showIndicator(III)V
.end method

.method public abstract startEvShowAgainAnimation()V
.end method

.method public abstract updateFaceView(ZZZZI)V
.end method

.method public abstract updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
.end method
