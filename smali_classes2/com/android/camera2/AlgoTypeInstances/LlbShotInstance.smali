.class public Lcom/android/camera2/AlgoTypeInstances/LlbShotInstance;
.super Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;
.source "LlbShotInstance.java"


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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method
