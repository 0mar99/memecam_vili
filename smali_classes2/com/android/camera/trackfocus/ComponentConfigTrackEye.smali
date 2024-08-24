.class public Lcom/android/camera/trackfocus/ComponentConfigTrackEye;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigTrackEye.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigTrackEye"


# instance fields
.field public mIsClosed:Z

.field public mIsMutexEnable:Z

.field public mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initSupported(ILcom/android/camera2/CameraCapabilities;I)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTrackEye(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAutoFocusSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    if-eqz p3, :cond_3

    return v0

    :cond_3
    const/16 p0, 0xa3

    if-eq p1, p0, :cond_4

    const/16 p0, 0xab

    if-eq p1, p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackEye#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrackEye#getDisplayTitleString() not supported"

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

    const-string v0, "ComponentConfigTrackEye#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackEye#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackEye#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTrackEyeOn()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v0, 0x1

    const-string/jumbo v1, "pref_camera_track_eye_preferred_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->initSupported(ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    return-void
.end method

.method public setTrackEye(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_track_eye_preferred_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
