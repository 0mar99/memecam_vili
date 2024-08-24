.class public Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "TrackFocusMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionTrackFocus"


# instance fields
.field public mActiveArraySize:Landroid/graphics/Rect;

.field public mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFaces:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field public mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/protocols/MainContentProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mResultRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mTrackMode:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public trackResult:Lcom/android/camera/trackfocus/TrackResult;

.field public zoomRatio:F


# direct methods
.method public constructor <init>(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getTrackResult(Lcom/android/camera/module/BaseModule;)Lcom/android/camera/trackfocus/TrackResult;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mResultRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FunctionTrackFocus"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mTrackMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/android/camera/trackfocus/TrackResult;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mResultRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mTrackMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v3}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->zoomRatio:F

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/camera/trackfocus/TrackResult;-><init>(Landroid/graphics/Rect;IIF)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackResult;->isManualTrackMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mFaces:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mFaces:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Face;

    array-length p0, p0

    if-lez p0, :cond_2

    const-string/jumbo p0, "parseTrackResult FACE first"

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseTrackResult result "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mResultRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 10
    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mTrackMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    aput-object p0, p1, v1

    const-string/jumbo p0, "parseTrackResult mResultRoi %s mEyePos %s mTrackMode %s"

    .line 11
    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 12
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0
.end method

.method public static updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Lcom/android/camera/protocol/protocols/MainContentProtocol;Lcom/android/camera/module/Module;Landroid/graphics/Rect;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFocusViewVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    invoke-interface {p1, p0, p3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1, p0, p3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->getTrackResult(Lcom/android/camera/module/BaseModule;)Lcom/android/camera/trackfocus/TrackResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->trackResult:Lcom/android/camera/trackfocus/TrackResult;

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->trackResult:Lcom/android/camera/trackfocus/TrackResult;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Lcom/android/camera/protocol/protocols/MainContentProtocol;Lcom/android/camera/module/Module;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mFaces:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 2
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mResultRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 3
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 4
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mTrackMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    return p0
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

    const-string p0, "FunctionTrackFocus"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isTrackFocusOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 2
    sget-object p2, Lcom/android/camera/trackfocus/TrackFocusResultTag;->USE_NEW_COORDINATE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p2, p1}, Lcom/android/camera/HybridZoomingSystem;->toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->zoomRatio:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {p2, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->zoomRatio:F

    :goto_0
    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public receiveCaptureResultWhenCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public tagValueAutomaticParsed()V
    .locals 0

    return-void
.end method
