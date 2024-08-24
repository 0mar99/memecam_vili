.class public Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "AiWaterSceneMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AiWaterSceneMultipleASD"


# instance fields
.field public mCurrentDetectedScene:I

.field public mLastChangeSceneTime:J

.field public mParsedAiScene:I

.field public sceneResult:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mLastChangeSceneTime:J

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 2
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->sceneResult:I

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mParsedAiScene:I

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->dataChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget p0, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mCurrentDetectedScene:I

    invoke-virtual {p1, p0}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->onASDChange(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;)V

    return-void
.end method

.method public dataChanged()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mLastChangeSceneTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->impl2()Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->getASDResult()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mParsedAiScene:I

    if-eq v0, v1, :cond_0

    .line 5
    iput v1, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mCurrentDetectedScene:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mLastChangeSceneTime:J

    :cond_1
    return v0
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;)Z
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    .line 4
    iget-object p2, p2, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean p2, p2, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->resetScene()V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;)Z

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

    .line 1
    sget-object p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetScene()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->mParsedAiScene:I

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiWaterSceneMultipleASD;->sceneResult:I

    return-void
.end method
