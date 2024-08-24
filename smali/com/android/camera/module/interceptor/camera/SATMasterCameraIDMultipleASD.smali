.class public Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "SATMasterCameraIDMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SATMasterCameraId"


# instance fields
.field public isSupportAFSaliency:Z

.field public mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

.field public mMainContentProtocolWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/protocols/MainContentProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mSatMasterCameraId:I

.field public newSatMasterCameraId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/FocusManager;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mSatMasterCameraId:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mMainContentProtocolWeakReference:Ljava/lang/ref/WeakReference;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->dataChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreviewMetaDataUpdate satMasterCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->newSatMasterCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SATMasterCameraId"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->newSatMasterCameraId:I

    iput v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mSatMasterCameraId:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->isSupportAFSaliency:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setIsSupportAFSaliency(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mMainContentProtocolWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFocusViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0x19

    aput v1, p0, v0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public dataChanged()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->mSatMasterCameraId:I

    iget p0, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->newSatMasterCameraId:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MASTER_PHYSICAL_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MATER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

    const-string p0, "SATMasterCameraId"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->isSupportAFSaliency:Z

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->newSatMasterCameraId:I

    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/BaseModule;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 0

    return-void
.end method
