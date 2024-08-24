.class public Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance$1;
.super Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.source "DualRawBokehShotInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;->getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance$1;->this$0:Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method
