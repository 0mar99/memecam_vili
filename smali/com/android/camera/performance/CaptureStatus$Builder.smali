.class public Lcom/android/camera/performance/CaptureStatus$Builder;
.super Ljava/lang/Object;
.source "CaptureStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/CaptureStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public isCaptureNightSE:Z

.field public isFrontCamera:Z

.field public isHdrOn:Z

.field public isMultiCapture:Z

.field public isNeedFlash:Z

.field public modeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/performance/CaptureStatus$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isFrontCamera:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/performance/CaptureStatus$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->modeIndex:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/performance/CaptureStatus$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isNeedFlash:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/performance/CaptureStatus$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isHdrOn:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/performance/CaptureStatus$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isCaptureNightSE:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/performance/CaptureStatus$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isMultiCapture:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera/performance/CaptureStatus;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/performance/CaptureStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/performance/CaptureStatus;-><init>(Lcom/android/camera/performance/CaptureStatus$Builder;Lcom/android/camera/performance/CaptureStatus$1;)V

    return-object v0
.end method

.method public frontCamera(Z)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isFrontCamera:Z

    return-object p0
.end method

.method public isCaptureNightSE(Z)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isCaptureNightSE:Z

    return-object p0
.end method

.method public isHdrOn(Z)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isHdrOn:Z

    return-object p0
.end method

.method public isMultiCapture(Z)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isMultiCapture:Z

    return-object p0
.end method

.method public isNeedFlash(Z)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->isNeedFlash:Z

    return-object p0
.end method

.method public modeIndex(I)Lcom/android/camera/performance/CaptureStatus$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/performance/CaptureStatus$Builder;->modeIndex:I

    return-object p0
.end method
