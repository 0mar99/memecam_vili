.class public Lcom/android/camera/hdr10/ComponentConfigHDR10;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHDR10.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigHDR10"


# instance fields
.field public final PREFERENCES_KEY:Ljava/lang/String;

.field public mIsClosed:Z

.field public mIsFeatureMutexEnable:Z

.field public mIsQualityMutexEnable:Z

.field public mIsSATCameraId:Z

.field public mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

.field public mSupportedArray:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    .line 5
    sget-boolean p1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    if-nez p1, :cond_0

    const-string/jumbo p1, "pref_hdr10plus_video_mode_key"

    .line 6
    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "pref_hdr10_video_mode_key"

    .line 7
    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    :goto_0
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

.method private isFeatureOn(I)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
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

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

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

.method private declared-synchronized isSupport(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isTagMutex([ILcom/android/camera2/CameraCapabilities;I)Z
    .locals 5

    const-string v0, "ComponentConfigHDR10"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "isTagMutex return true, due to Capabilities is null"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 3
    array-length p0, p1

    if-ne p0, v3, :cond_2

    aget p0, p1, v4

    if-eqz p0, :cond_2

    aget p0, p1, v1

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget p0, p1, v4

    aget p1, p1, v1

    invoke-static {p2, p3, p0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    return v1

    .line 5
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    :cond_4
    new-array p0, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->videoHdrModeToString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "isTagMutex %s, current id not support, id %s"

    .line 7
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method private final isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ValueDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ComponentConfigHDR10"

    const-string p1, "isVideoHDR10Supported: false, because tag undefined"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraCharacteristics(Lcom/android/camera2/CameraCapabilities;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoQualityMutex(I)Z
    .locals 3

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "ComponentConfigHDR10"

    const-string v2, "isTagMutex quality %s, is4KHigher %s"

    .line 8
    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p2, :cond_0

    const-string p1, "ComponentConfigHDR10"

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

.method public static videoHdrModeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "hdr10+"

    goto :goto_0

    :cond_1
    const-string p0, "hdr10"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized getAvailableVideoHdrMode()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isMutexEnable(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4
    monitor-exit p0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10#getDisplayTitleString() not supported"

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

    const-string v0, "ComponentConfigHDR10#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getSupportVideoHdrMode()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActualOn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object v1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsClosed:Z

    return p0
.end method

.method public isHdr10On()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeatureOn(I)Z

    move-result p0

    return p0
.end method

.method public isHdr10PlusOn()Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeatureOn(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isMutexEnable(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSATShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedHdr10()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result p0

    return p0
.end method

.method public isSupportedHdr10Plus()Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result p0

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 8

    const-string v0, "ComponentConfigHDR10"

    const-string/jumbo v1, "reInit E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    .line 7
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

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    :goto_0
    if-nez p2, :cond_3

    .line 12
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
    iput-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    if-eqz p2, :cond_3

    move-object p3, v2

    .line 13
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->getCurrentQuality(I)[I

    move-result-object p2

    .line 14
    invoke-direct {p0, p2, p3, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isTagMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    const/4 v4, 0x2

    .line 15
    invoke-direct {p0, p2, p3, v4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isTagMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p3

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeaturesMutex(I)Z

    move-result v5

    .line 17
    iget-object v6, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    const-string/jumbo v7, "pref_hdr10_video_mode_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoQualityMutex(I)Z

    move-result p1

    goto :goto_2

    .line 19
    :cond_4
    invoke-direct {p0, p2, v2, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    invoke-direct {p0, p2, v2, v4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoQualityMutex([ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    .line 21
    :goto_2
    monitor-enter p0

    .line 22
    :try_start_1
    iget-object p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 23
    iget-object p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 24
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    .line 26
    iput-boolean v5, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    .line 27
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    .line 28
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    invoke-direct {p0, v2, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 32
    :cond_7
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 33
    invoke-direct {p0, v2, v4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9
    const-string p1, "ComponentConfigHDR10"

    const-string/jumbo p2, "reInit X, isVideoHdrModeSupported mSupportedArray %s mIsTagMutexEnableArray %s"

    new-array p3, v4, [Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    .line 37
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 38
    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsClosed:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->setClosed(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
