.class public Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;
.super Ljava/lang/Object;
.source "MiCamera2MIVIRepeating.java"

# interfaces
.implements Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIRepeating$1;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera2/MiCamera2MIVIRepeating$1;

.field public final synthetic val$finalParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIRepeating$1;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;->this$1:Lcom/android/camera2/MiCamera2MIVIRepeating$1;

    iput-object p2, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;->val$finalParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted()V
    .locals 1

    const-string p0, "MIVIRepeating"

    const-string v0, "MIVICaptureManager: onCaptureCompleted: "

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    const-string p0, "MIVIRepeating"

    const-string v0, "MIVICaptureManager: onCaptureFailed: "

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;->this$1:Lcom/android/camera2/MiCamera2MIVIRepeating$1;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;->val$finalParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$100(Lcom/android/camera2/MiCamera2MIVIRepeating;Lcom/xiaomi/camera/mivi/bean/ResultOutputData;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method
