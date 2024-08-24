.class public Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "PreviewDebugInfoMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewDebugInfo"


# instance fields
.field public activeArraySize:Landroid/graphics/Rect;

.field public afRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public isShowAfRegionView:Z

.field public isShowDebugInfoView:Z

.field public isZoomRatioSupported:Z

.field public mDebugInformation:Ljava/lang/String;

.field public mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/protocols/MainContentProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->mMainProtocolWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isShowAfRegionView:Z

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->afRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->activeArraySize:Landroid/graphics/Rect;

    .line 5
    iget-boolean v3, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isZoomRatioSupported:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceBasedZoomRatio()F

    move-result v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 6
    :goto_1
    invoke-interface {v0, v1, v2, v3, v5}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isShowDebugInfoView:Z

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->mDebugInformation:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 3

    .line 2
    invoke-interface {p2}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v2, 0xa2

    if-eq p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    const/16 v2, 0xa6

    if-ne p2, v2, :cond_1

    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isShowAfRegionView()Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isShowAfRegionView:Z

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfoView()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isShowDebugInfoView:Z

    return v1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

    const-string p0, "PreviewDebugInfo"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isShowPreviewDebugInfo()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isZoomRatioSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->isZoomRatioSupported:Z

    .line 4
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->activeArraySize:Landroid/graphics/Rect;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

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
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getDebugInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/Util;->getDebugInformation(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->mDebugInformation:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;->afRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method
