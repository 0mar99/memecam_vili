.class public Lcom/android/camera2/SnapParam;
.super Ljava/lang/Object;
.source "SnapParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/SnapParam$CaptureType;,
        Lcom/android/camera2/SnapParam$ShotInstanceVersion;,
        Lcom/android/camera2/SnapParam$Param;
    }
.end annotation


# instance fields
.field public captureType:I

.field public isZslCapture:Z

.field public mAlgoType:I

.field public mOperatingMode:I

.field public mParam:Lcom/android/camera2/SnapParam$Param;

.field public mRawCallbackType:I

.field public final mShotInstanceVersion:I

.field public needFlash:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    .line 3
    new-instance v0, Lcom/android/camera2/SnapParam$Param;

    invoke-direct {v0}, Lcom/android/camera2/SnapParam$Param;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera2/SnapParam;->mShotInstanceVersion:I

    return-void
.end method


# virtual methods
.method public checkMultiFrameFusion()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v0, v0, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object p0, p0, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAlgoType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    return p0
.end method

.method public getCaptureType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/SnapParam;->captureType:I

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/SnapParam;->mOperatingMode:I

    return p0
.end method

.method public getRawCallbackType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/SnapParam;->mRawCallbackType:I

    return p0
.end method

.method public getShotInstanceVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/SnapParam;->mShotInstanceVersion:I

    return p0
.end method

.method public isNeedFlash()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/SnapParam;->needFlash:Z

    return p0
.end method

.method public isParamValid()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/SnapParam;->captureType:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZslCapture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/SnapParam;->isZslCapture:Z

    return p0
.end method

.method public resetToDefault()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    const/4 v1, 0x1

    .line 2
    iput v1, p0, Lcom/android/camera2/SnapParam;->captureType:I

    .line 3
    iput v0, p0, Lcom/android/camera2/SnapParam;->mRawCallbackType:I

    .line 4
    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iput v1, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    iput v1, p0, Lcom/android/camera2/SnapParam$Param;->multiFrameNum:I

    return-void
.end method

.method public setAlgoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    return-void
.end method

.method public setCaptureType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/SnapParam;->captureType:I

    return-void
.end method

.method public setNeedFlash(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/SnapParam;->needFlash:Z

    return-void
.end method

.method public setOperatingMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/SnapParam;->mOperatingMode:I

    return-void
.end method

.method public setRawCallbackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/SnapParam;->mRawCallbackType:I

    return-void
.end method

.method public setZslCapture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/SnapParam;->isZslCapture:Z

    return-void
.end method

.method public shouldMultiFrameFusion()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera2/SnapParam;->mAlgoType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v0, v0, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    .line 2
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object p0, p0, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
