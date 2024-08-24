.class public Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHDR10PRO.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigHDR10PRO"


# instance fields
.field public mIsClosed:Z

.field public mIsFeatureMutexEnable:Z

.field public mIsQualityMutexEnable:Z

.field public mIsSATCameraId:Z

.field public mIsTagMutexEnable:Z

.field public mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    return-void
.end method

.method private getCurrentQuality(I)[I
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, p0, v2

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, p0, v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, p0, v2

    const/16 p1, 0x1e

    aput p1, p0, v1

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isFeaturesMutex(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p2, :cond_0

    const-string p1, "ComponentConfigHDR10PRO"

    const-string p2, "isVideoQualityMutex return true, due to Capabilities is null"

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p1, v0

    if-eqz v1, :cond_2

    aget v1, p1, p0

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget v0, p1, v0

    aget p1, p1, p0

    invoke-static {p2, p3, v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z

    move-result p1

    xor-int/2addr p0, p1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10PRO#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10PRO#getDisplayTitleString() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10PRO#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10PRO#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isActualOn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_hlg_video_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsClosed:Z

    return p0
.end method

.method public isFeatureOn()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v0, "pref_hlg_video_mode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isMutexEnable()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSATShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10PRO#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 4

    const-string v0, "ComponentConfigHDR10PRO"

    const-string/jumbo v1, "reInit E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    :goto_0
    if-nez p2, :cond_3

    .line 13
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v3

    if-ne p2, v3, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    if-eqz p2, :cond_3

    move-object p3, v2

    .line 14
    :cond_3
    monitor-enter p0

    .line 15
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    .line 19
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    const/4 v3, 0x3

    if-eqz p2, :cond_4

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->getCurrentQuality(I)[I

    move-result-object p2

    .line 21
    iput-boolean v1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 22
    invoke-direct {p0, p2, p3, v3}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isFeaturesMutex(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 24
    invoke-direct {p0, p2, v2, v3}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    .line 25
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x2

    iget-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "ComponentConfigHDR10PRO"

    const-string/jumbo p2, "reInit X, isVideoHdr10ProModeSupported mSupported %b mIsTagMutexEnable %b mIsFeatureMutexEnable %b mIsQualityMutexEnable %b"

    .line 28
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_1
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsClosed:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->setClosed(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_hlg_video_mode_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
