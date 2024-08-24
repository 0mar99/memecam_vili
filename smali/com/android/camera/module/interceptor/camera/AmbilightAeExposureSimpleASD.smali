.class public Lcom/android/camera/module/interceptor/camera/AmbilightAeExposureSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "AmbilightAeExposureSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Long;",
        "Lcom/android/camera/module/AmbilightModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbilightAeExposure"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/camera/module/AmbilightModule;->setExposureTime(J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AmbilightAeExposureSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AmbilightAeExposureSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/AmbilightModule;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/AmbilightModule;->getSceneMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AmbilightAeExposureSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;)Z

    move-result p0

    return p0
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Long;",
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

    const-string p0, "AmbilightAeExposure"

    return-object p0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AMBILIGHT_AE_EXPOSURE:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/AmbilightModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAmbilightAutoAeTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

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
    check-cast p1, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AmbilightAeExposureSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/AmbilightModule;Lcom/android/camera2/CameraCapabilities;)Z

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
