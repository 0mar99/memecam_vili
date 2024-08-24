.class public Lcom/android/camera/hdr10/ComponentConfigTrueColour;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigTrueColour.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigTrueColour"


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
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

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

    const-string p1, "ComponentConfigTrueColour"

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

    const-string p1, "ComponentConfigTrueColour#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrueColour#getDisplayTitleString() not supported"

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

    const-string v0, "ComponentConfigTrueColour#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrueColour#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isActualOn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_true_colour_video_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsClosed:Z

    return p0
.end method

.method public isFeatureOn()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050057

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v1, "pref_true_colour_video_mode_key"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isMutexEnable()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z
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
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z
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
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsSATCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrueColour#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 4

    const-string v0, "ComponentConfigTrueColour"

    const-string/jumbo v1, "reInit E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsSATCameraId:Z

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000o0()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    :goto_0
    if-nez p2, :cond_5

    .line 14
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v3

    if-ne p2, v3, :cond_4

    move p2, v1

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsSATCameraId:Z

    if-eqz p2, :cond_5

    move-object p3, v2

    .line 15
    :cond_5
    monitor-enter p0

    .line 16
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    .line 20
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    const/4 v3, 0x3

    if-eqz p2, :cond_6

    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->getCurrentQuality(I)[I

    move-result-object p2

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    .line 23
    invoke-direct {p0, p2, p3, v3}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->isFeaturesMutex(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    .line 25
    invoke-direct {p0, p2, v2, v3}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    .line 26
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 27
    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mSupported:Z

    .line 28
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsTagMutexEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x2

    iget-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsFeatureMutexEnable:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsQualityMutexEnable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "ComponentConfigTrueColour"

    const-string/jumbo p2, "reInit X, isVideoTrueColorModeSupported mSupported %b mIsTagMutexEnable %b mIsFeatureMutexEnable %b mIsQualityMutexEnable %b"

    .line 29
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_1
    move-exception p1

    .line 30
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->mIsClosed:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->setClosed(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_true_colour_video_mode_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
