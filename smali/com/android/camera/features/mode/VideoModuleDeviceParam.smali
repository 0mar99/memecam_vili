.class public Lcom/android/camera/features/mode/VideoModuleDeviceParam;
.super Lcom/android/camera/features/mode/ModuleDeviceParam;
.source "VideoModuleDeviceParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    }
.end annotation


# instance fields
.field public is60FPSSupported:Z

.field public is8KCamcorder:Z

.field public isEisOn:Z

.field public mQuality:I

.field public needChooseVideoBeauty:Z

.field public needDisableEISAndOIS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackOperationModeNotVideo()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isNeedChooseVideoBeauty()Z

    move-result v1

    const v2, 0x8004

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8012

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x8019

    goto :goto_1

    :cond_1
    const v1, 0x8009

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x8029

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getQuality()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    const v1, 0xf010

    goto :goto_1

    .line 10
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x800f

    goto :goto_1

    :cond_8
    const v1, 0x800d

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isIs60FPSSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const v2, 0x803c

    goto :goto_2

    :cond_a
    move v2, v1

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const v2, 0x80f4

    .line 14
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v1

    const v3, 0x8024

    if-nez v1, :cond_c

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_c

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_c

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    if-nez v0, :cond_d

    move v2, v3

    .line 18
    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_e

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_e

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    if-eqz v0, :cond_f

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isNeedDisableEISAndOIS()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    move v3, v2

    .line 22
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isIs8KCamcorder()Z

    move-result p0

    if-eqz p0, :cond_10

    if-eqz v0, :cond_10

    const v3, 0x801d

    :cond_10
    return v3
.end method

.method public getFrontOperationModeNotVideo()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isNeedChooseVideoBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8019

    goto :goto_1

    :cond_0
    const v0, 0x8004

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x8009

    .line 6
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isNeedDisableEISAndOIS()Z

    move-result p0

    if-eqz p0, :cond_5

    const v0, 0x8024

    :cond_5
    return v0
.end method

.method public getOperatingModeNotVideo()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getFrontOperationModeNotVideo()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getBackOperationModeNotVideo()I

    move-result p0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOperatingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModuleDevice"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getQuality()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->mQuality:I

    return p0
.end method

.method public isEisOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn:Z

    return p0
.end method

.method public isIs60FPSSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->is60FPSSupported:Z

    return p0
.end method

.method public isIs8KCamcorder()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->is8KCamcorder:Z

    return p0
.end method

.method public isNeedChooseVideoBeauty()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->needChooseVideoBeauty:Z

    return p0
.end method

.method public isNeedDisableEISAndOIS()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->needDisableEISAndOIS:Z

    return p0
.end method

.method public setEisOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn:Z

    return-void
.end method

.method public setIs60FPSSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->is60FPSSupported:Z

    return-void
.end method

.method public setIs8KCamcorder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->is8KCamcorder:Z

    return-void
.end method

.method public setNeedChooseVideoBeauty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->needChooseVideoBeauty:Z

    return-void
.end method

.method public setNeedDisableEISAndOIS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->needDisableEISAndOIS:Z

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->mQuality:I

    return-void
.end method
