.class public Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "LivePhotoResultMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionLivePhoto"


# instance fields
.field public aeState:Ljava/lang/Integer;

.field public awbState:Ljava/lang/Integer;

.field public mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;

    .line 3
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->isLivePhotoStarted()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    invoke-direct {p2}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;-><init>()V

    .line 5
    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->aeState:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setAEState(I)V

    .line 6
    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->awbState:Ljava/lang/Integer;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setAWBState(I)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->timeStamp:Ljava/lang/Long;

    if-nez p0, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setTimeStamp(J)V

    .line 8
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->isGyroStable()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setGyroscropStable(Z)V

    .line 9
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->getFilterId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setFilterId(I)V

    .line 10
    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->onLivePhotoResultCallback(Lcom/xiaomi/camera/liveshot/LivePhotoResult;)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->isLivePhotoStarted()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

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

    const-string p0, "FunctionLivePhoto"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->aeState:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->awbState:Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;->timeStamp:Ljava/lang/Long;

    return-void
.end method
