.class public Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "ZoomMapMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZoomMap"


# instance fields
.field public mActiveArraySize:Landroid/graphics/Rect;

.field public mIsSatMapDisplay:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mMapRect:Landroid/graphics/Rect;

.field public mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

.field public mZoomMapRect:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field

.field public mZoomMapRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field

.field public zoomRatio:F


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mMapRect:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    return-void
.end method

.method private getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mMapRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->getZoomMapROI(Landroid/graphics/Rect;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/camera/zoommap/ZoomMapController;->setMapRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_SAT_MAP_DISPLAY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mIsSatMapDisplay:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ZOOM_MAP_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ZOOM_MAP_RECT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

    const-string p0, "ZoomMap"

    return-object p0
.end method

.method public getZoomMapROI(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mIsSatMapDisplay:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->isTagExists()Z

    move-result v0

    const-string v1, "getZoomMapRIO, tag not define"

    const-string v2, "ZoomMap"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapRoi:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;->unmarshal([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->left:I

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->top:I

    iget v2, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->height:I

    add-int/2addr v2, v0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->width:I

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mIsSatMapDisplay:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->isTagExists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 11
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;->unmarshal([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    move-result-object p0

    if-nez p0, :cond_3

    .line 12
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->left:I

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->top:I

    iget v2, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->height:I

    add-int/2addr v2, v0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->width:I

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapController;->getWindowSize()Landroid/util/Size;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->zoomRatio:F

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 17
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->zoomRatio:F

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v5, v4

    mul-float/2addr v5, v3

    float-to-int v3, v5

    .line 18
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 19
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    .line 20
    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getZoomMapROI zoomRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->zoomRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_5
    :goto_0
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

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
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureRequest;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->zoomRatio:F

    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 0

    return-void
.end method
