.class public abstract Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "AlgoTypeShotInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final STAG:Ljava/lang/String; = "ShotInstanceV2"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAlgoType:I

.field public mCombinationMode:I

.field public mCompletedMetaNum:I

.field public mMainPhysicalId:I

.field public mMainSurfaceIndex:I

.field public mMainSurfaceSize:Landroid/util/Size;

.field public mReceivedShutterNum:I

.field public mSnapParam:Lcom/android/camera2/SnapParam;

.field public mSubPhysicalId:I

.field public mSubSurfaceIndex:I

.field public mSubSurfaceSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShotInstanceV2@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 4
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    .line 5
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    .line 6
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    .line 7
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShotInstanceV2@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 12
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    .line 13
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    .line 14
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    .line 15
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShotInstanceV2@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 20
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    .line 21
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    .line 22
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    .line 23
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    .line 25
    iput-object p3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    .line 26
    invoke-virtual {p3}, Lcom/android/camera2/SnapParam;->getAlgoType()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    .line 27
    invoke-virtual {p3}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p1
.end method

.method public static synthetic access$1000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$1400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p1
.end method

.method public static synthetic access$3100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$3500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$4000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$4100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    return p0
.end method

.method public static synthetic access$4200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/engine/BufferFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public static synthetic access$602(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrameLost:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method private applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v1}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->perRequestParamDone(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private doAnchorFrame()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "anchor frame not enabled"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "flash disable anchor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->doAnchorFrameAsThumbnail()Z

    move-result p0

    return p0
.end method

.method private generateRequestParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateRequestParam: target surface size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 6
    iget-object v4, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add surface target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 10
    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isSatMode:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isSatMode:Z

    .line 11
    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isLegacySat:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isLegacySat:Z

    .line 12
    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isRoleSat:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isRoleSat:Z

    return-object p0
.end method

.method private generateSavePath(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final getSoundTimeWhenAnchor(ILcom/android/camera2/CameraCapabilities;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSoundTimeWhenAnchor(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "original soundTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotInstanceV2"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_1

    and-int/lit8 p0, p1, 0x3

    goto :goto_1

    :cond_1
    shr-int/lit8 p0, p1, 0x4

    goto :goto_0

    :cond_2
    shr-int/lit8 p0, p1, 0x2

    :goto_0
    and-int/2addr p0, v3

    .line 3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final soundTime is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public afterCapture(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V

    return-void
.end method

.method public abstract applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
.end method

.method public beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string p1, "beforeCapture: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v1, "captureRequestReady: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v3, v2, Lcom/android/camera/CameraSize;->width:I

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    const/16 v4, 0x23

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_2
    const/4 p1, 0x4

    .line 8
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureRequestReady request number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "algo_prepare_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 10
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "algo_device_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "shot_prepare_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 12
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "shot_device_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    return-void
.end method

.method public abstract doAnchorFrameAsThumbnail()Z
.end method

.method public final generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;-><init>(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;)V

    return-object v0
.end method

.method public final generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.end method

.method public abstract getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
.end method

.method public getShutterTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public abstract isAnchorFrameLost()Z
.end method

.method public isShutterReturned()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    xor-int/2addr p0, v1

    return p0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mReceivedShutterNum:I

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCaptureShutter()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v7, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p0

    iput-boolean p0, v7, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    .line 4
    invoke-interface {v0, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string p1, "onParallelTaskDataCreated: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public perRequestParamDone(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0

    return-void
.end method

.method public final prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->prepareShot()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->doAnchorFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    .line 5
    iget v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getSoundTimeWhenAnchor(ILcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    .line 6
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: algoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " anchorFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " soundTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string p1, "prepareAlgoParam: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract prepareShot()V
.end method

.method public final startSessionCapture()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "!!!!! invalid capture type for capture"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateRequestParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 6
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget-object v4, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateSavePath(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 9
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v3}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "_"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "burst capture, frame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v7, v7, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    .line 12
    :goto_0
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v7, v7, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ge v6, v7, :cond_1

    .line 13
    iget-object v7, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v7, v6}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 14
    iget-object v7, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v6, "single capture"

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v3, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    .line 21
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v2, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v1, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 23
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->afterCapture(Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 24
    :catch_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->afterCapture(Z)V

    .line 25
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_2
    return-void
.end method
