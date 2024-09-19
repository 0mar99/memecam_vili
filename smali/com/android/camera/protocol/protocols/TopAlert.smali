.class public interface abstract Lcom/android/camera/protocol/protocols/TopAlert;
.super Ljava/lang/Object;
.source "TopAlert.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;
.implements Lcom/android/camera/protocol/protocols/LyingDirectHint;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/TopAlert;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/TopAlert;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/TopAlert;

    return-object v0
.end method


# virtual methods
.method public abstract addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract alert960FpsDirectOverheatHint(I)V
.end method

.method public abstract alertAiAudio(II)V
.end method

.method public abstract alertAiAudioBGHint(II)V
.end method

.method public abstract alertAiAudioMutexToastIfNeed(I)V
.end method

.method public abstract alertAiAudioNewDescTip(Ljava/lang/String;II)V
.end method

.method public abstract alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V
.end method

.method public abstract alertAiAudioSingleBGHint(II)V
.end method

.method public abstract alertAiAudioSingleDescTip(Ljava/lang/String;II)V
.end method

.method public abstract alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V
.end method

.method public abstract alertAiDetectTipHint(IIJ)V
.end method

.method public abstract alertAiDetectTipHint(ILjava/lang/String;J)V
.end method

.method public abstract alertAiEnhancedVideoHint(II)V
.end method

.method public abstract alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V
.end method

.method public abstract alertCastVideoHint(II)V
.end method

.method public abstract alertDocumentTip(I)V
.end method

.method public abstract alertDualVideoHint(II)V
.end method

.method public abstract alertESPFeatureTip(Z)V
.end method

.method public abstract alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract alertFastmotionProValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract alertFastmotionValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract alertFlash(ILjava/lang/String;Z)V
.end method

.method public abstract alertFocusViewDescTip(Ljava/lang/String;IIJ)V
.end method

.method public abstract alertHDR(IZZ)V
.end method

.method public abstract alertHandGestureHint(I)V
.end method

.method public abstract alertLightingTip(I)V
.end method

.method public abstract alertLiveShotHint(II)V
.end method

.method public abstract alertMacroModeHint(II)V
.end method

.method public abstract alertMimojiFaceDetect(ZI)V
.end method

.method public abstract alertMotionDetectionTip(I)V
.end method

.method public abstract alertMusicClose(Z)V
.end method

.method public abstract alertParameterDescriptionTip(II)V
.end method

.method public abstract alertParameterResetTip(ZII)V
.end method

.method public abstract alertProColourHint(II)V
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;II)V
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;IIJ)V
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public abstract alertRecommendTipHint(ILjava/lang/String;J)V
.end method

.method public abstract alertSlideSwitchLayout(ZI)V
.end method

.method public abstract alertSlowMotionDisableRecordTip(I)V
.end method

.method public abstract alertSubtitleHint(II)V
.end method

.method public abstract alertSuperNightSeTip(I)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;II)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;IIIJ)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract alertTimerBurstHint(II)V
.end method

.method public abstract alertTopHint(II)V
.end method

.method public abstract alertTopHint(IIJ)V
.end method

.method public abstract alertTopHint(ILjava/lang/String;)V
.end method

.method public abstract alertTopHint(ILjava/lang/String;J)V
.end method

.method public abstract alertUpdateValue(IILjava/lang/String;)V
.end method

.method public abstract alertVideoOverheatHint(I)V
.end method

.method public abstract alertVideoUltraClear(II)V
.end method

.method public abstract alertVideoUltraClear(ILjava/lang/String;)V
.end method

.method public abstract animTopBlackCover()V
.end method

.method public abstract canProvide()Z
.end method

.method public abstract clearAlertStatus()V
.end method

.method public abstract clearAllTipsState()V
.end method

.method public abstract clearFastmotionValue()V
.end method

.method public abstract clearVideoUltraClear()V
.end method

.method public abstract containShortDurationDescriptionTips(Ljava/lang/String;)Z
.end method

.method public varargs abstract disableMenuItem(Z[I)V
.end method

.method public varargs abstract enableMenuItem(Z[I)V
.end method

.method public abstract endTopExpendAnim()V
.end method

.method public abstract expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
.end method

.method public abstract getAlertIsShow()Z
.end method

.method public abstract getCurrentAiSceneLevel()I
.end method

.method public abstract getTipsState(Ljava/lang/String;)Z
.end method

.method public abstract getVideoTag()Lcom/android/camera/ui/VideoTagView;
.end method

.method public abstract getVideoTagContent()Ljava/lang/String;
.end method

.method public abstract hideAlert()V
.end method

.method public abstract hideConfigMenu(Z)V
.end method

.method public abstract hideDelayNumber()V
.end method

.method public abstract hideExtraMenu()V
.end method

.method public abstract hideRecommendDescTip(Ljava/lang/String;)V
.end method

.method public abstract hideSwitchTip()V
.end method

.method public abstract isContainAlertLightingTip(I)Z
.end method

.method public varargs abstract isContainAlertRecommendTip([I)Z
.end method

.method public abstract isCurrentRecommendTipText(I)Z
.end method

.method public abstract isExtraMenuShowing()Z
.end method

.method public abstract isHDRShowing()Z
.end method

.method public abstract isShowBacklightSelector()Z
.end method

.method public abstract isTopExpendAnimRunning()Z
.end method

.method public abstract isZoomTipShowing()Z
.end method

.method public abstract onFlashClick(Landroid/view/View;)V
.end method

.method public abstract onHdrClick(Landroid/view/View;)V
.end method

.method public abstract onTopAnimClick(Landroid/view/View;)V
.end method

.method public abstract reInitAlert(Z)V
.end method

.method public abstract refreshExtraMenu()V
.end method

.method public abstract refreshHistogramStatsView()V
.end method

.method public abstract removeExtraMenu(I)V
.end method

.method public abstract resetTipsWidth()V
.end method

.method public abstract reverseExpandTopBar(Z)Z
.end method

.method public abstract setAiSceneImageLevel(I)V
.end method

.method public abstract setAlertAnim(Z)V
.end method

.method public abstract setConfigMenuResetWhenRestartmode()V
.end method

.method public abstract setRecordingTimeState(I)V
.end method

.method public abstract setRecordingTimeState(IZ)V
.end method

.method public abstract setShow(Z)V
.end method

.method public abstract setTipsState(Ljava/lang/String;Z)V
.end method

.method public abstract setVolumeValue([F)V
.end method

.method public abstract showConfigMenu()V
.end method

.method public abstract showDelayNumber(I)V
.end method

.method public abstract showDocumentStateButton(I)V
.end method

.method public abstract showExtraMenu()V
.end method

.method public abstract startLiveShotAnimation()V
.end method

.method public varargs abstract updateConfigItem([I)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateHistogramStatsData([I)V
.end method

.method public abstract updateHistogramStatsData([I[I[I)V
.end method

.method public abstract updateProVideoRecordingSimpleView(Z)V
.end method

.method public abstract updateRGBHistogramSwitched(Z)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract updateRecordingTimeStyle(Z)V
.end method

.method public abstract updateTopAlertLayout()V
.end method
