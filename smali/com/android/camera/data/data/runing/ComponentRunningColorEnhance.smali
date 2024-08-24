.class public Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningColorEnhance.java"


# instance fields
.field public mIsEnabled:Z

.field public mIsSupported:Z

.field public mRecordValue:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    return-void
.end method

.method private getValue(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1208e4

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_color_enhance"

    return-object p0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return p0
.end method

.method public isSupport()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    return p0
.end method

.method public reInit(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getValue(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return-void
.end method

.method public reset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    :cond_0
    return-void
.end method
