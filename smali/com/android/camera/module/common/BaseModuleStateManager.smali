.class public Lcom/android/camera/module/common/BaseModuleStateManager;
.super Ljava/lang/Object;
.source "BaseModuleStateManager.java"

# interfaces
.implements Lcom/android/camera/module/common/BaseModuleStateManagerInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseModuleStateManager"


# instance fields
.field public isGradienterOn:Z

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCameraPreviewRect:Landroid/graphics/Rect;

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mFlashAutoModeState:Ljava/lang/String;

.field public volatile mIgnoreTouchEvent:Z

.field public final mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsPortraitLightingOn:Z

.field public mIsTrackEyeOn:Z

.field public mIsTrackFocusOn:Z

.field public mIsZooming:Z

.field public mNormalFilterId:I

.field public volatile mPaused:Z

.field public mSurfaceCreatedTimestamp:J

.field public mTriggerMode:I

.field public mUnInterruptableReason:Ljava/lang/String;

.field public mUserVisibleRect:Landroid/graphics/Rect;

.field public mVolumeKeyFunction:Ljava/lang/String;

.field public mVolumeLongPress:Z

.field public mZoomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mZoomScaled:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeKeyFunction:Ljava/lang/String;

    const/16 v0, 0xa

    .line 5
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mTriggerMode:I

    .line 6
    new-instance v0, Landroid/util/Range;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mZoomRange:Landroid/util/Range;

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeLongPress:Z

    return-void
.end method


# virtual methods
.method public getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method public getCameraPreviewRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mCameraPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFlashAutoModeState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFlashAutoModeState:Ljava/lang/String;

    return-object p0
.end method

.method public getNormalFilterId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mNormalFilterId:I

    return p0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mSurfaceCreatedTimestamp:J

    return-wide v0
.end method

.method public getTriggerMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mTriggerMode:I

    return p0
.end method

.method public getUnInterruptableReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mUnInterruptableReason:Ljava/lang/String;

    return-object p0
.end method

.method public getUserVisibleRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mUserVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getVolumeKeyFunction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeKeyFunction:Ljava/lang/String;

    return-object p0
.end method

.method public getZoomRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mZoomRange:Landroid/util/Range;

    return-object p0
.end method

.method public getZoomScaled()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mZoomScaled:F

    return p0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleStateManager;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleStateManager;->isDeparted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCreated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isDeparted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isFaceDetectionEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFaceDetectionEnabled:Z

    return p0
.end method

.method public isFaceDetectionStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFaceDetectionStarted:Z

    return p0
.end method

.method public isGradienterOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->isGradienterOn:Z

    return p0
.end method

.method public isIgnoreTouchEvent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIgnoreTouchEvent:Z

    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mPaused:Z

    return p0
.end method

.method public isPortraitLightingOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsPortraitLightingOn:Z

    return p0
.end method

.method public isTrackEyeOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsTrackEyeOn:Z

    return p0
.end method

.method public isTrackFocusOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsTrackFocusOn:Z

    return p0
.end method

.method public isVolumeLongPress()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeLongPress:Z

    return p0
.end method

.method public isZooming()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsZooming:Z

    return p0
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-void
.end method

.method public setCameraPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mCameraPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setCreated(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setDeparted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setFaceDetectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFaceDetectionEnabled:Z

    return-void
.end method

.method public setFaceDetectionStarted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFaceDetectionStarted:Z

    return-void
.end method

.method public setFlashAutoModeState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mFlashAutoModeState:Ljava/lang/String;

    return-void
.end method

.method public setGradienterOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->isGradienterOn:Z

    return-void
.end method

.method public setIgnoreTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIgnoreTouchEvent:Z

    return-void
.end method

.method public setNormalFilterId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mNormalFilterId:I

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mPaused:Z

    return-void
.end method

.method public setPortraitLightingOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsPortraitLightingOn:Z

    return-void
.end method

.method public setSurfaceCreatedTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mSurfaceCreatedTimestamp:J

    return-void
.end method

.method public setTrackEyeOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsTrackEyeOn:Z

    return-void
.end method

.method public setTrackFocusOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsTrackFocusOn:Z

    return-void
.end method

.method public setTriggerMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTriggerMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModuleStateManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mTriggerMode:I

    return-void
.end method

.method public setUnInterruptableReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mUnInterruptableReason:Ljava/lang/String;

    return-void
.end method

.method public setUserVisibleRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mUserVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setVolumeKeyFunction(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolumeKeyFunction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModuleStateManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeKeyFunction:Ljava/lang/String;

    return-void
.end method

.method public setVolumeLongPress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mVolumeLongPress:Z

    return-void
.end method

.method public setZoomRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mZoomRange:Landroid/util/Range;

    return-void
.end method

.method public setZoomScaled(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mZoomScaled:F

    return-void
.end method

.method public setZooming(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleStateManager;->mIsZooming:Z

    return-void
.end method
