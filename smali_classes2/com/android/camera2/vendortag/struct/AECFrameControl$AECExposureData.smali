.class public Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;
.super Ljava/lang/Object;
.source "AECFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/AECFrameControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AECExposureData"
.end annotation


# instance fields
.field public mDeltaEVFromTarget:F

.field public mExposureTime:J

.field public mLinearGain:F

.field public mSensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mExposureTime:J

    return-wide p1
.end method

.method public static synthetic access$102(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mLinearGain:F

    return p1
.end method

.method public static synthetic access$202(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mSensitivity:F

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mDeltaEVFromTarget:F

    return p1
.end method


# virtual methods
.method public getDeltaEVFromTarget()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mDeltaEVFromTarget:F

    return p0
.end method

.method public getExposureTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mExposureTime:J

    return-wide v0
.end method

.method public getLinearGain()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mLinearGain:F

    return p0
.end method

.method public getSensitivity()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->mSensitivity:F

    return p0
.end method
