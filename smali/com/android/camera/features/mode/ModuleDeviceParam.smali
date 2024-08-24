.class public Lcom/android/camera/features/mode/ModuleDeviceParam;
.super Ljava/lang/Object;
.source "ModuleDeviceParam.java"


# instance fields
.field public mActualId:I

.field public mBogusId:I

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mModuleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mActualId:I

    return p0
.end method

.method public getBogusId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mBogusId:I

    return p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getModuleIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mModuleIndex:I

    return p0
.end method

.method public isBackCamera()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getBogusId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getBogusId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActualId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mActualId:I

    return-void
.end method

.method public setBogusId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mBogusId:I

    return-void
.end method

.method public setCapabilities(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public setModuleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mModuleIndex:I

    return-void
.end method
