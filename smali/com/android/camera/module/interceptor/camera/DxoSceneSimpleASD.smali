.class public Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "DxoSceneSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "[B",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionDxoAsdSceneDetected"


# instance fields
.field public mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

.field public mEmpty:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mEmpty:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 2
    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;->unmarshal([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-virtual {p1, p3}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "confident:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ",value:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "FunctionDxoAsdSceneDetected"

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setDxoAsdScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

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

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
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

    const-string p0, "FunctionDxoAsdSceneDetected"

    return-object p0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p0, 0x1

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
