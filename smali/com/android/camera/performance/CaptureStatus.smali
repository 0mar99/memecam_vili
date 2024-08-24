.class public Lcom/android/camera/performance/CaptureStatus;
.super Ljava/lang/Object;
.source "CaptureStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/performance/CaptureStatus$Builder;
    }
.end annotation


# instance fields
.field public isCaptureNightSE:Z

.field public isFrontCamera:Z

.field public isHdrOn:Z

.field public isMultiCapture:Z

.field public isNeedFlash:Z

.field public modeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/CaptureStatus$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$000(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isFrontCamera:Z

    .line 4
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$100(Lcom/android/camera/performance/CaptureStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/performance/CaptureStatus;->modeIndex:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$200(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isNeedFlash:Z

    .line 6
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$300(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isHdrOn:Z

    .line 7
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$400(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isCaptureNightSE:Z

    .line 8
    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$500(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus;->isMultiCapture:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/performance/CaptureStatus$Builder;Lcom/android/camera/performance/CaptureStatus$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/performance/CaptureStatus;-><init>(Lcom/android/camera/performance/CaptureStatus$Builder;)V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/performance/CaptureStatus;->modeIndex:I

    return p0
.end method

.method public isCaptureNightSE()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isCaptureNightSE:Z

    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isFrontCamera:Z

    return p0
.end method

.method public isHdrOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isHdrOn:Z

    return p0
.end method

.method public isMultiCapture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isMultiCapture:Z

    return p0
.end method

.method public isNeedFlash()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isNeedFlash:Z

    return p0
.end method
