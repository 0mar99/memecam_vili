.class public interface abstract Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceDetectionCallback"
.end annotation


# virtual methods
.method public ignoreFace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isFaceDetectStarted()Z
.end method

.method public abstract onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;)V
.end method

.method public useSingleFace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
