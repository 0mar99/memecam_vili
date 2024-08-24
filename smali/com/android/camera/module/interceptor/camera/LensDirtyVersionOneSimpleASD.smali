.class public Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "LensDirtyVersionOneSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LensDirty"


# instance fields
.field public mResult:Ljava/lang/Integer;

.field public mStartTime:J

.field public mTimeOut:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method

.method private getMaximumTime()I
    .locals 0

    const/16 p0, 0x3a98

    return p0
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mResult:Ljava/lang/Integer;

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mResult:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->showLensDirtyTip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->dispose()V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->getMaximumTime()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mTimeOut:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mTimeOut:Ljava/lang/Boolean;

    const/4 p0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->setLensDirtyDetectEnable(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;Z)V

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v1, [I

    const/16 v2, 0x3d

    aput v2, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updateLensDirtyDetect(Z)V

    :cond_0
    return v0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mResult:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

.method public getStartDelayTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    const-string p0, "LensDirty"

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
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->LENS_DIRTY_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isLensDirtyDetectEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0Oo()Z

    move-result v0

    const-string/jumbo v1, "pref_lens_dirty_tip"

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->mStartTime:J

    :cond_1
    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

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

    const/4 p0, 0x1

    return p0
.end method
