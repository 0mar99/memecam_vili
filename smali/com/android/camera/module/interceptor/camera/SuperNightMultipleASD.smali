.class public Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "SuperNightMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAPTURE_EXP_TIME_UPDATE_MILLS:I = 0x3e8

.field public static final SUPER_NIGHT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SuperNightMultipleASD"


# instance fields
.field public mASDExifInfo:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mCaptureExpTime:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field

.field public mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field public mIsLLS:Z

.field public mIsSuperNight:Z

.field public mLLSNeeded:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNonSemanticScene:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field

.field public mPointOfCaptureExpTimeUpdated:J

.field public mSatMasterCameraId:I

.field public mSeEvMappingEnabled:Z

.field public mSuperNightCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$SuperNightCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperNightEllcMode:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperNightExif:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field

.field public mSuperNightSeCaptureTime:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getSuperNightInfo()Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightExif:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightExif:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->getSuperNightExif([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightEllcMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightEllcMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mASDExifInfo:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 7
    iput-object p0, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->asdExifInfo:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private updateASDScene(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)Z
    .locals 6

    .line 1
    iget v0, p2, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget p2, p2, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->getSuperNightInfo()Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v0

    if-eqz v0, :cond_1

    and-int/lit16 v2, p2, -0x100

    int-to-float v2, v2

    .line 4
    iput v2, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    :cond_1
    and-int/lit16 v2, p2, -0x100

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string/jumbo v2, "se"

    .line 5
    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    .line 6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Algo reporting super night se enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    .line 9
    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    .line 10
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSeEvMappingEnabled:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isEvChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {p1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    goto :goto_3

    .line 12
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    invoke-interface {p1, v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    :goto_3
    shr-int/lit8 p2, p2, 0x8

    .line 13
    invoke-direct {p0, p1, v3, p2}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->updateCaptureExpTime(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V

    .line 14
    iget-boolean p0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    return p0
.end method

.method private updateCaptureExpTime(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0Oo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0xa3

    .line 3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSatMasterCameraId:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    .line 5
    invoke-interface {p1, v1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mPointOfCaptureExpTimeUpdated:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move p2, v0

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTime:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->isTagExists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTime:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightSeCaptureTime:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 10
    :goto_0
    invoke-static {v2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes([B)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v2

    if-nez p2, :cond_6

    .line 11
    iget-boolean v3, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/16 v4, 0x3e8

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v3

    if-ge v3, v4, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v3

    if-le v3, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, p2

    :goto_1
    if-eqz v0, :cond_a

    .line 14
    iput-object v2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    .line 15
    iget-boolean p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSeEvMappingEnabled:Z

    if-nez p2, :cond_8

    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isEvChanged()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p2, :cond_7

    .line 17
    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getLLSCaptureTime()I

    move-result p2

    goto :goto_2

    :cond_7
    move p2, v1

    .line 18
    :goto_2
    invoke-interface {p1, v1, p2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    goto :goto_3

    .line 19
    :cond_8
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p2, :cond_9

    .line 20
    invoke-virtual {p2, p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    .line 21
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v1

    .line 22
    :cond_9
    iget-boolean p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    invoke-interface {p1, p2, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    .line 23
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mPointOfCaptureExpTimeUpdated:J

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 7

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isSupportSuperNight()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 4
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->getSuperNightInfo()Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 6
    invoke-interface {p1, p3}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p1, p3, p3}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mNonSemanticScene:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {p2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 10
    array-length v0, p2

    if-gtz v0, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    array-length v0, p2

    move v1, p3

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_5

    aget-object v4, p2, v1

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(NoneSemantics)-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->updateASDScene(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_a

    .line 14
    invoke-interface {p1, p3}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    .line 15
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mLLSNeeded:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mLLSNeeded:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_6

    move p2, v3

    goto :goto_1

    :cond_6
    move p2, p3

    :goto_1
    if-nez p2, :cond_7

    .line 16
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsLLS:Z

    if-eq v0, p2, :cond_9

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsLLS:Z

    if-eq v0, p2, :cond_8

    goto :goto_2

    :cond_8
    move v3, p3

    :goto_2
    invoke-direct {p0, p1, v3, p3}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->updateCaptureExpTime(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V

    .line 18
    :cond_9
    iput-boolean p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsLLS:Z

    :cond_a
    return-void

    .line 19
    :cond_b
    :goto_3
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mIsSuperNight:Z

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->getSuperNightInfo()Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 21
    invoke-interface {p1, p3}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 23
    invoke-interface {p1, p3, p3}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    .line 24
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") asd scene result null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_EXIF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightExif:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightEllcMode:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mNonSemanticScene:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_EXP_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCaptureExpTime:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 5
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSuperNightSeCaptureTime:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 6
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_LLS_NEEDED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mLLSNeeded:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 7
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ASD_EXIF_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mASDExifInfo:Lcom/android/camera/module/interceptor/ASDTagHolder;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

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

    const-string p0, "SuperNightMultipleASD"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/camera/CameraSettings;->getSuperNightEvMappingMaskByMode(Lcom/android/camera2/CameraCapabilities;I)I

    move-result p1

    .line 4
    invoke-static {p2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSuperNightEvMappingSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSeEvMappingEnabled:Z

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setSuperNightOn(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightOn()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->mSatMasterCameraId:I

    return-void
.end method

.method public bridge synthetic parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 0

    return-void
.end method
