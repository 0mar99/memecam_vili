.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;
.super Ljava/lang/Object;
.source "MiThemeOperationCvLens.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/PortraitCVLENSFetcher;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera2/PortraitCVLENSFetcher;

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/PortraitCVLENSFetcher;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    return-object p0
.end method

.method public getComponentRunningCvLens(Lcom/android/camera/data/data/runing/DataItemRunning;)Lcom/android/camera/data/data/runing/ComponentRunningCvLens;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    return-object p0
.end method

.method public getCustomView(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCvGuideCallBack(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCvLensRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getCvLensUpdaterListener(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNormalPanelEntranceItemDesc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNormalPanelEntranceItemRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCVLensUWBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCvVersion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCvLensZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public showCvLens()V
    .locals 0

    return-void
.end method
