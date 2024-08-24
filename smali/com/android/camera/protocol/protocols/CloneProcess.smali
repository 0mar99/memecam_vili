.class public interface abstract Lcom/android/camera/protocol/protocols/CloneProcess;
.super Ljava/lang/Object;
.source "CloneProcess.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/CloneProcess;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CloneProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/CloneProcess;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CloneProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/CloneProcess;

    return-object v0
.end method


# virtual methods
.method public abstract canSnap()Z
.end method

.method public abstract getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;
.end method

.method public abstract getStatus()Lcom/android/camera/fragment/clone/Status;
.end method

.method public abstract hideCaptureMessage()V
.end method

.method public abstract isAdded()Z
.end method

.method public abstract onBackPress()V
.end method

.method public abstract onCountDownFinished()V
.end method

.method public abstract onFilmRatioChanged(ZZ)V
.end method

.method public abstract onFrameAvailable()V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onPreviewPrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onReplayPause()V
.end method

.method public abstract onReplayResume()V
.end method

.method public abstract onSaveFinish(Landroid/net/Uri;)V
.end method

.method public abstract onThumbnailResult([BIII)V
.end method

.method public abstract onTimeFreezeStateChange(I)V
.end method

.method public abstract prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract setDetectedPersonInPreview(Z)V
.end method

.method public abstract setSlideChangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V
.end method

.method public abstract showExitConfirm(Z)V
.end method

.method public abstract showPlayButton()V
.end method

.method public abstract showResetAndSaveEdit()V
.end method

.method public abstract showSaveAndGiveUp(Z)V
.end method

.method public abstract showStopAndCancel()V
.end method

.method public abstract stopCaptureToPreviewResult(Z)V
.end method

.method public abstract updateCaptureMessage(IZ)V
.end method

.method public abstract updateCaptureMessage(Ljava/lang/String;Z)V
.end method

.method public abstract updateEditPos(FF)V
.end method

.method public abstract updatePlayPos(F)V
.end method
