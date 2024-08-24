.class public Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "LLSNeededSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LLS"


# instance fields
.field public mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 1

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightSeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p2, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean p0, p0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    if-eqz p0, :cond_1

    move v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    .line 7
    :goto_1
    iget-object p0, p2, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result p0

    if-eq p1, p0, :cond_4

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "is lls needed = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "LLS"

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p2, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/NightManager;->setLLSNeeded(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setLLS(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

    move-result p0

    return p0
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
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

    const-string p0, "LLS"

    return-object p0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_LLS_NEEDED:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLLSSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O()Z

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
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

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
