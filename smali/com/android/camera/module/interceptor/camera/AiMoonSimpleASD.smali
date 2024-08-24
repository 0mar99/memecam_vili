.class public Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "AiMoonSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/module/SuperMoonModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AiMoon"


# instance fields
.field public mCurrentAiScene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    return-void
.end method


# virtual methods
.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    if-eq v0, p3, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consumeAiSceneResult mCurrentAiScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiMoon"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput p3, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p3

    iget v0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/camera2/CameraConfigManager;->setAiMoonEffectEnable(Z)V

    .line 7
    iget p0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    invoke-virtual {p2, p0}, Lcom/android/camera/module/SuperMoonModule;->setCurrentAiScene(I)V

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/module/SuperMoonModule;->resumePreviewInWorkThread()V

    :cond_1
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/SuperMoonModule;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)Z

    move-result p0

    return p0
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    const/4 p0, 0x1

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

    const-string p0, "AiMoon"

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
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera2/CameraCapabilities;)Z
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
