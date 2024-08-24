.class public Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "NearRangeSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Byte;",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "NearRangeSimpleASD"


# instance fields
.field public lastShowNearRangeMode:Z

.field public mBottomPopupTips:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/protocols/BottomPopupTips;",
            ">;"
        }
    .end annotation
.end field

.field public mDualController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/protocols/DualController;",
            ">;"
        }
    .end annotation
.end field

.field public showNearRangeMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "near_range_dbg"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mDualController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private DEBUG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    const/4 p3, 0x0

    .line 3
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Not satisfied <fallback role id UW>!"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 6
    invoke-virtual {p2, p3}, Lcom/android/camera/module/Camera2Module;->setNearRangeMode(Z)V

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/camera/module/Camera2Module;->setNearRangeMode(Z)V

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object p1, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string p2, "NearRangeMode:Not support near range tip!"

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v1, "NearRangeMode:Not satisfed <back facing>!"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera/module/Camera2Module;->isNeedNearRangeTip()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v1, "NearRangeMode:isNeedNearRangeTip is false!"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 17
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_4

    .line 18
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v1, "NearRangeMode:Not satisfed <capture mode>!"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 20
    :cond_4
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_5

    .line 21
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v1, "NearRangeMode:Not satisfed <sat device>!"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    const/16 v0, 0xba

    if-ne p2, v0, :cond_6

    .line 24
    sget-object p2, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Not satisfed <document mode>!"

    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/protocols/DualController;

    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 27
    sget-object p2, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Not satisfed <zoom slide>!"

    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 29
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 30
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p2

    if-eqz p2, :cond_8

    move p2, p1

    goto :goto_0

    :cond_8
    move p2, p3

    :goto_0
    if-eqz p2, :cond_9

    .line 31
    sget-object p2, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Not satisfed <beauty panel>!"

    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    .line 33
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 34
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    move p1, p3

    :goto_1
    if-eqz p1, :cond_b

    .line 35
    sget-object p1, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string p2, "NearRangeMode:Not satisfed <seek bar>!"

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->dataChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    iput-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->lastShowNearRangeMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->isSubTipShowing(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode:Enter near range mode"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {v0, v2, v2, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->isSubTipShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode: hide near range mode tip"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    .line 10
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeUIStatus(Z)V

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public dataChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->showNearRangeMode:Z

    iget-boolean p0, p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->lastShowNearRangeMode:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

    move-result p0

    return p0
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
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

    .line 1
    sget-object p0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACKROLE:Lcom/android/camera2/vendortag/VendorTag;

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportNearRangeMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

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
