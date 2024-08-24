.class public Lcom/android/camera/module/common/BaseAppStateManager;
.super Ljava/lang/Object;
.source "BaseAppStateManager.java"

# interfaces
.implements Lcom/android/camera/module/common/BaseAppStateManagerInterface;


# instance fields
.field public mAutoHibernationMode:Z

.field public mCropValue:Ljava/lang/String;

.field public mDeviceRotation:F

.field public mDisplayRotation:I

.field public mEnterAutoHibernationCount:I

.field public mIsAutoHibernationSupported:Z

.field public mIsImageCaptureIntent:Z

.field public mIsLaunchFromLockscreen:Z

.field public mIsSaveCaptureImage:Z

.field public mLastBackPressedTime:J

.field public mLocation:Landroid/location/Location;

.field public mOrientation:I

.field public mOrientationCompensation:I

.field public mQuickCapture:Z

.field public mSaveUri:Landroid/net/Uri;

.field public mShootOrientation:I

.field public mShootRotation:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    .line 3
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    .line 5
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public getCropValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mCropValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceRotation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    return p0
.end method

.method public getDisplayRotation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return p0
.end method

.method public getEnterAutoHibernationCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    return p0
.end method

.method public getLastBackPressedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLastBackPressedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    return p0
.end method

.method public getOrientationCompensation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    return p0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getShootOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootOrientation:I

    return p0
.end method

.method public getShootRotation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootRotation:F

    return p0
.end method

.method public isAutoHibernationMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mAutoHibernationMode:Z

    return p0
.end method

.method public isAutoHibernationSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsAutoHibernationSupported:Z

    return p0
.end method

.method public isImageCaptureIntent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsImageCaptureIntent:Z

    return p0
.end method

.method public isLaunchFromLockscreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsLaunchFromLockscreen:Z

    return p0
.end method

.method public isQuickCapture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mQuickCapture:Z

    return p0
.end method

.method public isSaveCaptureImage()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsSaveCaptureImage:Z

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->isLaunchFromLockscreen()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public parseIntent(Lcom/android/camera/Camera;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseAppStateManager;->setIsImageCaptureIntent(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraIntentManager;->isLaunchFromLockscreen(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseAppStateManager;->setLaunchFromLockscreen(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->isImageCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraSavedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseAppStateManager;->setSaveUri(Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraCropValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseAppStateManager;->setCropValue(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraShouldSaveCapture()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseAppStateManager;->setIsSaveCaptureImage(Z)V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isQuickCapture()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseAppStateManager;->setQuickCapture(Z)V

    return-void
.end method

.method public setAutoHibernationMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mAutoHibernationMode:Z

    return-void
.end method

.method public setAutoHibernationSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsAutoHibernationSupported:Z

    return-void
.end method

.method public setCropValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mCropValue:Ljava/lang/String;

    return-void
.end method

.method public setDeviceRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return-void
.end method

.method public setEnterAutoHibernationCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    return-void
.end method

.method public setIsImageCaptureIntent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsImageCaptureIntent:Z

    return-void
.end method

.method public setIsSaveCaptureImage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsSaveCaptureImage:Z

    return-void
.end method

.method public setLastBackPressedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLastBackPressedTime:J

    return-void
.end method

.method public setLaunchFromLockscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsLaunchFromLockscreen:Z

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    return-void
.end method

.method public setOrientationCompensation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    return-void
.end method

.method public setPictureOrientation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->getOrientation()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->getDeviceRotation()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootRotation:F

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->getOrientation()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseAppStateManager;->getOrientation()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootOrientation:I

    return-void
.end method

.method public setQuickCapture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mQuickCapture:Z

    return-void
.end method

.method public setSaveUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mSaveUri:Landroid/net/Uri;

    return-void
.end method

.method public setShootOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootOrientation:I

    return-void
.end method

.method public setShootRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mShootRotation:F

    return-void
.end method
