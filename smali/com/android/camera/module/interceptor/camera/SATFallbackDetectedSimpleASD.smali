.class public Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "SATFallbackDetectedSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Boolean;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SATFallbackDetected"


# instance fields
.field public frameNumber:J

.field public sequenceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p3, p0, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->sequenceId:I

    iget-wide v0, p0, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->frameNumber:J

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/camera/module/BaseModule;->checkSatFallback(ZIJ)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 0

    .line 2
    iget-boolean p0, p2, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    return p0
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSampleTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScope()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    const-string p0, "SATFallbackDetected"

    return-object p0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACK_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->shouldCheckSatFallbackState()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public isNativeTag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->sequenceId:I

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->frameNumber:J

    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
