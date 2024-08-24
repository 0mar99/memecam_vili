.class public interface abstract Lcom/android/camera/module/common/BaseAppStateManagerInterface;
.super Ljava/lang/Object;
.source "BaseAppStateManagerInterface.java"


# virtual methods
.method public abstract getCropValue()Ljava/lang/String;
.end method

.method public abstract getDeviceRotation()F
.end method

.method public abstract getDisplayRotation()I
.end method

.method public abstract getEnterAutoHibernationCount()I
.end method

.method public abstract getLastBackPressedTime()J
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOrientationCompensation()I
.end method

.method public abstract getSaveUri()Landroid/net/Uri;
.end method

.method public abstract getShootOrientation()I
.end method

.method public abstract getShootRotation()F
.end method

.method public abstract isAutoHibernationMode()Z
.end method

.method public abstract isAutoHibernationSupported()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract isLaunchFromLockscreen()Z
.end method

.method public abstract isQuickCapture()Z
.end method

.method public abstract isSaveCaptureImage()Z
.end method

.method public abstract isSelectingCapturedResult()Z
.end method

.method public abstract parseIntent(Lcom/android/camera/Camera;)V
.end method

.method public abstract setAutoHibernationMode(Z)V
.end method

.method public abstract setAutoHibernationSupported(Z)V
.end method

.method public abstract setCropValue(Ljava/lang/String;)V
.end method

.method public abstract setDeviceRotation(F)V
.end method

.method public abstract setDisplayRotation(I)V
.end method

.method public abstract setEnterAutoHibernationCount(I)V
.end method

.method public abstract setIsImageCaptureIntent(Z)V
.end method

.method public abstract setIsSaveCaptureImage(Z)V
.end method

.method public abstract setLastBackPressedTime(J)V
.end method

.method public abstract setLaunchFromLockscreen(Z)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setOrientationCompensation(I)V
.end method

.method public abstract setPictureOrientation(Z)V
.end method

.method public abstract setQuickCapture(Z)V
.end method

.method public abstract setSaveUri(Landroid/net/Uri;)V
.end method

.method public abstract setShootOrientation(I)V
.end method

.method public abstract setShootRotation(F)V
.end method
