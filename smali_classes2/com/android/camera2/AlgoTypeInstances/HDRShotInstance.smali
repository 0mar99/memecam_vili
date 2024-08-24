.class public Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance;
.super Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;
.source "HDRShotInstance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    return-void
.end method


# virtual methods
.method public applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;->applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-gt p2, v0, :cond_1d

    add-int/lit8 v0, p2, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v0, v0, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v2, v2, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-gez v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    int-to-byte v2, v2

    .line 7
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 9
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00o0o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v2, v2, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 12
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v2, v2, Lcom/android/camera2/SnapParam$Param;->hdrCheckerSceneType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v4, v4, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v4, v4, Lcom/android/camera2/SnapParam$Param;->hdrCheckerAdrc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 14
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 15
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v2, v2, Lcom/android/camera2/SnapParam$Param;->isZslHDR:Z

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->snapshotReqInfo:[B

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotReqInfo(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    .line 18
    :cond_4
    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v2, :cond_6

    .line 19
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->hdrCaptureRequestSettings:[I

    if-nez v2, :cond_5

    if-ltz v0, :cond_a

    :goto_3
    move p2, v3

    goto :goto_4

    .line 20
    :cond_5
    aget p2, v2, p2

    if-ne p2, v3, :cond_a

    goto :goto_3

    .line 21
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OOO0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->hdrCaptureRequestSettings:[I

    if-nez v2, :cond_7

    if-nez v0, :cond_a

    goto :goto_3

    .line 23
    :cond_7
    aget p2, v2, p2

    if-ne p2, v3, :cond_a

    goto :goto_3

    .line 24
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o0o()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 25
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->hdrCaptureRequestSettings:[I

    if-nez v2, :cond_9

    if-nez v0, :cond_a

    goto :goto_3

    .line 26
    :cond_9
    aget p2, v2, p2

    if-ne p2, v3, :cond_a

    goto :goto_3

    :cond_a
    move p2, v1

    .line 27
    :goto_4
    iget v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v4, 0x4

    if-ne v2, v3, :cond_b

    :goto_5
    move v2, v3

    goto :goto_6

    :cond_b
    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v5, 0x3

    if-ne v2, v5, :cond_d

    .line 28
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOoOO()Z

    move-result v2

    goto :goto_6

    :cond_d
    if-ne v2, v4, :cond_e

    .line 29
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOoOO()Z

    move-result v2

    goto :goto_6

    :cond_e
    const/4 v5, -0x1

    if-ne v2, v5, :cond_10

    .line 30
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 31
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v5

    if-eq v2, v5, :cond_f

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 32
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v5

    if-ne v2, v5, :cond_10

    .line 33
    :cond_f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o0o()Z

    move-result v2

    goto :goto_6

    :cond_10
    move v2, v1

    .line 34
    :goto_6
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_11

    .line 35
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oooo00o()Z

    move-result v5

    goto :goto_7

    :cond_11
    move v5, v1

    :goto_7
    if-eqz p2, :cond_12

    .line 36
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 37
    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->isMfHdrQuickShotEnabled()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 38
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v6, "Mfhdr quickshot enabled\uff0cdisable mfnr"

    invoke-static {p2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 39
    :cond_12
    iget-object v6, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v6, v6, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v6, v6, Lcom/android/camera2/SnapParam$Param;->disableMfnrForMfnr:Z

    if-nez v6, :cond_17

    if-eqz p2, :cond_13

    if-eqz v2, :cond_13

    .line 40
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v6, v6, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v6, v6, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ge v6, v4, :cond_13

    goto :goto_8

    :cond_13
    if-eqz p2, :cond_14

    if-eqz v5, :cond_14

    .line 41
    iget-object v5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v5, v5, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v5, v5, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ge v5, v4, :cond_14

    goto :goto_8

    .line 42
    :cond_14
    iget-object v4, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v4, v4, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v4, v4, Lcom/android/camera2/SnapParam$Param;->singleCaptureForHDRplusMFNR:Z

    if-eqz v4, :cond_15

    :goto_8
    move p2, v3

    goto :goto_9

    :cond_15
    if-eqz p2, :cond_16

    if-eqz v2, :cond_16

    .line 43
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o0o()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_8

    :cond_16
    if-eqz p2, :cond_17

    .line 44
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean p2, p2, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    if-eqz p2, :cond_17

    goto :goto_8

    :cond_17
    move p2, v1

    :goto_9
    if-eqz p2, :cond_18

    .line 45
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyHdrParameter enable mfnr EV = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_a

    .line 47
    :cond_18
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 49
    :goto_a
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    .line 50
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 51
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean p2, p2, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 52
    :cond_19
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result p2

    if-eqz p2, :cond_1a

    goto :goto_b

    :cond_1a
    move v3, v1

    .line 53
    :goto_b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOO0()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 54
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO()Z

    move-result p2

    if-eqz p2, :cond_1b

    if-eqz v3, :cond_1b

    .line 55
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "prepareHDR: if ev changed needed set HDR false "

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "applyHdrParameter:applyHDR is false since ev changed!"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 58
    :cond_1b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO()Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 59
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string p2, "prepareHDR: if isHdrDegradeMFNREnabled needed set HDR false "

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 61
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1c
    return-void

    .line 62
    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;->beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v0, v0, Lcom/android/camera2/SnapParam$Param;->qcfaEnabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isSatMode:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    const/16 v0, 0x23

    const-string v1, " comMode: "

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighPerformanceSessionKeySupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession: 0xEF06, surface size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xef06

    .line 10
    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    iget v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession: surface size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    iget v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :cond_2
    :goto_0
    return-void
.end method

.method public doAnchorFrameAsThumbnail()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    const/4 v2, 0x5

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x66

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAnchorFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance$1;-><init>(Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance;)V

    return-object v0
.end method

.method public getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;

    invoke-direct {v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;-><init>()V

    .line 3
    iput-object v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    .line 4
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v2, v2, Lcom/android/camera2/SnapParam$Param;->qcfaEnabled:Z

    const-string v3, " size: "

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 7
    iget-object v4, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add qcfa surface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isLegacySat:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isRoleSat:Z

    .line 11
    iget-boolean v4, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isLegacySat:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    iput-boolean v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isSatMode:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_8

    .line 12
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v2, 0x0

    .line 13
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v8, v7, Lcom/android/camera2/SnapParam$Param;->isFakeSatEnabled:Z

    const/4 v9, 0x3

    if-eqz v8, :cond_3

    .line 14
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v7, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v2

    .line 15
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 16
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget v8, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v7, v8, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurfaceIndex(IZ)I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    goto/16 :goto_3

    .line 17
    :cond_3
    iget-boolean v7, v7, Lcom/android/camera2/SnapParam$Param;->isHDRSR:Z

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 19
    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    if-ne v9, v7, :cond_4

    .line 20
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v7, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v2

    .line 21
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget v8, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v7, v8, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledMainCaptureIndex(IZ)I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    if-nez v2, :cond_5

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v8, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v8, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v2

    .line 23
    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget v10, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v8, v6, v10}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainSurfaceIndex(ZI)I

    move-result v8

    iput v8, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    .line 24
    :cond_5
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    if-eqz v7, :cond_6

    .line 25
    new-instance v7, Landroid/util/Size;

    iget-object v8, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    iget-object v10, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v7, v8, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 26
    iget-object v8, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v7, v11, v5

    const-string v7, "[SAT]hdr fusion mode, size is: %s"

    invoke-static {v10, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 28
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add surface"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v2

    if-eq v2, v9, :cond_7

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 31
    :cond_7
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    .line 32
    iput v9, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    .line 33
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceSize:Landroid/util/Size;

    .line 34
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v2, v9, v5

    aput-object v3, v9, v6

    const-string v3, "[SAT]add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v8, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 37
    :cond_8
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 40
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v3, :cond_9

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 41
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v3, :cond_9

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 42
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v7, v3, :cond_a

    goto :goto_4

    .line 43
    :cond_a
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v7, v7, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 44
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v3, v7, :cond_9

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 45
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v3, v7, :cond_b

    goto :goto_4

    .line 46
    :cond_b
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v5

    .line 47
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "add surface %s to capture request, size is: %s"

    .line 48
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 50
    :cond_c
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 51
    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result v2

    const v3, 0x9001

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    .line 52
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result v2

    const v3, 0x9003

    if-eq v2, v3, :cond_e

    .line 53
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 54
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    .line 55
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "add preview surface %s to capture request, size is: %s"

    .line 56
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;->prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 2
    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v0, v0, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "enable ZSL for HDR"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "disable ZSL for HDR"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public shouldConfigSessionByDefault()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
