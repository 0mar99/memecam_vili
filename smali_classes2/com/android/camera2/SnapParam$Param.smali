.class public final Lcom/android/camera2/SnapParam$Param;
.super Ljava/lang/Object;
.source "SnapParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/SnapParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation


# instance fields
.field public baseEvValue:I

.field public disableMfnrForMfnr:Z

.field public doRemosaic:Z

.field public evValues:[I

.field public fusionType:LOooO0OO/OooO0OO;

.field public hdrCaptureRequestSettings:[I

.field public hdrCheckerAdrc:I

.field public hdrCheckerSceneType:I

.field public hdrType:I

.field public isFakeSatEnabled:Z

.field public isHDRBokeh:Z

.field public isHDRSR:Z

.field public isZslHDR:Z

.field public iso:I

.field public multiFrameNum:I

.field public numOfNonBaseEvs:I

.field public qcfaEnabled:Z

.field public sequenceNum:I

.field public shouldDoMFNR:Z

.field public singleCaptureForHDRplusMFNR:Z

.field public snapshotReqInfo:[B

.field public superNightAepLineValue:[I

.field public superNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/SnapParam$Param;->baseEvValue:I

    .line 3
    iput v0, p0, Lcom/android/camera2/SnapParam$Param;->numOfNonBaseEvs:I

    return-void
.end method
