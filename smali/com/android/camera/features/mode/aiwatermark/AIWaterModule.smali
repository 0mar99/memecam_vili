.class public Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;
.super Lcom/android/camera/module/Camera2Module;
.source "AIWaterModule.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AIWaterModule"


# instance fields
.field public mASDHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

.field public mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

.field public mFullHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

.field public mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mFullHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mASDHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->updateWatermarkUI(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void
.end method

.method private findBestWatermarkItem(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->getAIWatermarkItem(I)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;-><init>(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getAIWatermarkItem(I)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;-><init>()V

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;->createPriorityChain(I)Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x59

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mFullHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;->createChain(Landroid/content/Context;I)Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mFullHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mFullHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mASDHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;->createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mASDHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mASDHanlder:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->handleRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0
.end method

.method private updateWatermarkUI(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 2
    new-instance p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->consumePreference([I)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/16 v3, 0x58

    if-eq v2, v3, :cond_0

    const/16 v3, 0x59

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->findBestWatermarkItem(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public consumeWatermarkCoordinate(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCaptureCoordinate(J)[I

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCaptureRect(J)Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public getWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public isFrontMirror()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    return p0
.end method

.method public isInQCFAMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInQCFAMode()Z

    move-result p0

    return p0
.end method

.method public isMultipleRawHdrSupported()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->supportMTKHDRReprocess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    .line 4
    sget-object v0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMultipleRawHdrSupported: hdrType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const/4 v0, 0x4

    if-ne v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isZslPreferred()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO0()Z

    move-result p0

    return p0
.end method

.method public onASDChange(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needActive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->impl2()Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->onASDChange(I)V

    :cond_0
    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onCreate(II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->addLocalRenderer(I)V

    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->addLocalRenderer(I)V

    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->addLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeLocalRenderer(I)V

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeLocalRenderer(I)V

    const/4 v0, 0x7

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "circle"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x6

    .line 6
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    const-string/jumbo v1, "parallel"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/4 p1, 0x7

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    :cond_2
    return-void
.end method

.method public prepareAIWatermark(J)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAIWatermark -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLimitArea()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCoordinate()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCoordinate()[I

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureCoordinate([IJ)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->mWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLimitArea()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureRect(Landroid/graphics/Rect;J)V

    :cond_0
    return-void
.end method

.method public requireRaw(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->supportMTKHDRReprocess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->isMultipleRawHdrSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setWaterMark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setTimeWaterMarkEnable(Z)V

    return-void
.end method

.method public supportAnchorFrameAsThumbnail()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkForAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAnchorFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getAnchorFrameMask(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    const/16 p0, 0x64

    .line 6
    invoke-static {v0, v2, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    return p0

    .line 7
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public supportMTKHDRReprocess()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO0()Z

    move-result p0

    return p0
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectPictureTaken(Ljava/util/Map;I)V

    .line 3
    invoke-virtual {p0, p1, p4, p2, p5}, Lcom/android/camera/module/Camera2Module;->trackCaptureModuleInfo(Ljava/util/Map;IZZ)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    move-object v0, p0

    move v1, p4

    move-object v3, p3

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->trackBeautyInfo(IZLcom/android/camera/fragment/beauty/BeautyValues;J)V

    return-void
.end method

.method public updateASD()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setASDEnable(Z)V

    return-void
.end method

.method public updateLocation()Landroid/location/Location;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isTestImageCaptureWithoutLocation()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method
