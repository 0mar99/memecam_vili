.class public Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;
.super Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;
.source "SRShotInstance.java"


# instance fields
.field public mMainSurface:Landroid/view/Surface;

.field public mSubSurface:Landroid/view/Surface;


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
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->multiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00OOO()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :cond_0
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    .line 12
    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO00o()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mMainSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mSubSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mSubSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 15
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mMainSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 17
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 18
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 19
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mMainSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 21
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mSubSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 22
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 25
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 26
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v4, v2, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    if-eqz v4, :cond_7

    iget-boolean v2, v2, Lcom/android/camera2/SnapParam$Param;->isHDRSR:Z

    if-eqz v2, :cond_7

    .line 27
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 28
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 29
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v4, v2, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    aget v4, v4, p2

    iget v2, v2, Lcom/android/camera2/SnapParam$Param;->baseEvValue:I

    if-ne v4, v2, :cond_5

    .line 30
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oO()Z

    move-result v2

    if-nez v2, :cond_4

    .line 31
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v4, v2, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    iget v2, v2, Lcom/android/camera2/SnapParam$Param;->numOfNonBaseEvs:I

    sub-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 32
    :cond_4
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_1

    .line 33
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oO()Z

    move-result v2

    if-nez v2, :cond_6

    .line 34
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v2, v2, Lcom/android/camera2/SnapParam$Param;->numOfNonBaseEvs:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 35
    :cond_6
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 36
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v0, v0, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "HdrSrEv[%d]=%d"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v2, v2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v2, v2, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    aget v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 39
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_2

    .line 40
    :cond_7
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 41
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public doAnchorFrameAsThumbnail()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "doAnchorFrame legacy false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 6
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
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance$1;-><init>(Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;)V

    return-object v0
.end method

.method public getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
    .locals 11

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

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 7
    iget-object v5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add qcfa surface"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

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
    iget-boolean v5, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isLegacySat:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    iput-boolean v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isSatMode:Z

    const/4 v5, 0x2

    if-eqz v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v2, 0x0

    .line 13
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v7, v7, Lcom/android/camera2/SnapParam$Param;->isFakeSatEnabled:Z

    if-eqz v7, :cond_3

    .line 14
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v7, v4}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurface(IZ)Landroid/view/Surface;

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

    invoke-virtual {v7, v8, v4}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurfaceIndex(IZ)I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    goto :goto_2

    .line 17
    :cond_3
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v5, v7, :cond_4

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 19
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    .line 20
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v7, "[SAT] add binning sr surface "

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getSatBinningSRSurface()Landroid/view/Surface;

    move-result-object v2

    const/16 v7, 0x1f

    .line 22
    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    :cond_4
    if-nez v2, :cond_5

    .line 23
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v7, v4}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v2

    .line 24
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget v8, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v7, v4, v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainSurfaceIndex(ZI)I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    .line 25
    :cond_5
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 26
    :goto_2
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 27
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add surface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mMainSurface:Landroid/view/Surface;

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->checkMultiFrameFusion()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 31
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x3

    .line 32
    iput v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    .line 33
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceSize:Landroid/util/Size;

    .line 34
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v3, v9, v4

    const-string v3, "[SAT]add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v8, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    .line 36
    iput-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;->mSubSurface:Landroid/view/Surface;

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_6
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 41
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v3, :cond_7

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 42
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v3, :cond_7

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 43
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v7, v3, :cond_8

    goto :goto_3

    .line 44
    :cond_8
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    .line 45
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "add surface %s to capture request, size is: %s"

    .line 46
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 48
    :cond_9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 49
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result v2

    const v3, 0x9001

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    .line 50
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result v2

    const v3, 0x9003

    if-eq v2, v3, :cond_b

    .line 51
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 52
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 53
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "add preview surface %s to capture request, size is: %s"

    .line 54
    invoke-static {v7, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_b
    :goto_5
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    if-eqz v2, :cond_d

    .line 57
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 58
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add preview callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    .line 60
    invoke-virtual {v3}, Lcom/android/camera2/SnapParam;->checkMultiFrameFusion()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v3, v3, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v3, v3, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v3}, LOooO0OO/OooO0OO;->OooO00o()I

    move-result v3

    if-ne v3, v4, :cond_d

    .line 61
    :cond_c
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v3, "add preview target"

    invoke-static {p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v1
.end method

.method public prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;->prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 2
    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00OOO()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->disableRtStreamForSrRequired(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_1
    if-nez p2, :cond_2

    .line 6
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->disableRtStreamForSrExceptFistFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_3
    :goto_0
    return-void
.end method
