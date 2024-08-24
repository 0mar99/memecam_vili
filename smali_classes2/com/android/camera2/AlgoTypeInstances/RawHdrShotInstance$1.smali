.class public Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance$1;
.super Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.source "RawHdrShotInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;->getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance$1;->this$0:Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance$1;->this$0:Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object p0, p0, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEvValues([I)V

    :cond_0
    return-void
.end method
