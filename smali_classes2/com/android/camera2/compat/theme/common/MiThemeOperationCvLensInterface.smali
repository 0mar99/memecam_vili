.class public interface abstract Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationCvLensInterface.java"


# virtual methods
.method public abstract getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/PortraitCVLENSFetcher;
.end method

.method public abstract getComponentRunningCvLens(Lcom/android/camera/data/data/runing/DataItemRunning;)Lcom/android/camera/data/data/runing/ComponentRunningCvLens;
.end method

.method public abstract getCustomView(Landroid/content/Context;)I
.end method

.method public abstract getCvGuideCallBack(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;
.end method

.method public abstract getCvLensRes(Landroid/content/Context;I)I
.end method

.method public abstract getCvLensUpdaterListener(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
.end method

.method public abstract getNormalPanelEntranceItemDesc()I
.end method

.method public abstract getNormalPanelEntranceItemRes()I
.end method

.method public abstract isCVLensUWBokeh()Z
.end method

.method public abstract isCvVersion()Z
.end method

.method public abstract setCvLensZoomRatio(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract showCvLens()V
.end method
