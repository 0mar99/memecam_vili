.class public Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "AiSceneMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AiSceneMultipleASD"


# instance fields
.field public activeRegion:Landroid/graphics/Rect;

.field public cropRegion:Landroid/graphics/Rect;

.field public faces:[Landroid/hardware/camera2/params/Face;

.field public hdrMode:Ljava/lang/Byte;

.field public mAiSceneOpen:Z

.field public mCurrentDetectedScene:I

.field public mCurrentFaceScene:I

.field public mIsFrontCamera:Z

.field public mLastChangeSceneTime:J

.field public mLatestFaceScene:I

.field public mParsedAiScene:I

.field public mSameFaceSceneDetectedTimes:I

.field public sceneResult:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLastChangeSceneTime:J

    return-void
.end method

.method private faceSceneFiltering(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLatestFaceScene:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLatestFaceScene:I

    .line 3
    iput v1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mSameFaceSceneDetectedTimes:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mSameFaceSceneDetectedTimes:I

    const/16 v2, 0x14

    if-ge p1, v2, :cond_1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 5
    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mSameFaceSceneDetectedTimes:I

    if-ne v2, p1, :cond_1

    .line 6
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentFaceScene:I

    if-eq p1, v0, :cond_1

    .line 7
    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLatestFaceScene:I

    .line 8
    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentFaceScene:I

    return v3

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 9

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->cropRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->activeRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->cropRegion:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 4
    iget-boolean p3, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mIsFrontCamera:Z

    const/high16 v0, -0x80000000

    const-string v1, "AiSceneMultipleASD"

    const/4 v2, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->faces:[Landroid/hardware/camera2/params/Face;

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    .line 5
    array-length v3, p3

    move v5, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, p3, v4

    .line 6
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v8, p1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseAiSceneResult: AI_SCENE_MODE_HUMAN  face.length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->faces:[Landroid/hardware/camera2/params/Face;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";face.width = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";hdrMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->hdrMode:Ljava/lang/Byte;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x19

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v0

    .line 10
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->faceSceneFiltering(I)Z

    move-result p1

    const/16 p3, 0x23

    if-eqz p1, :cond_7

    if-eq v5, v0, :cond_4

    .line 11
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iput v5, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0Ooo()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    if-ne p1, p3, :cond_5

    const-string p1, "detected moon mode on unsupported device, set scene negative"

    .line 14
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput v2, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    .line 16
    :cond_5
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    if-gez p1, :cond_6

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "parseAiSceneResult: parse a error result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput v2, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    goto :goto_2

    .line 19
    :cond_6
    iput p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    .line 20
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 p2, 0xba

    if-ne p1, p2, :cond_9

    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    const/16 p2, 0xa

    if-eq p1, p2, :cond_8

    if-ne p1, p3, :cond_9

    .line 21
    :cond_8
    iput v2, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    :cond_9
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->dataChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget p0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentDetectedScene:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/module/image/AiSceneManager;->consumeAiSceneResult(IZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public dataChanged()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    .line 2
    iget v1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentDetectedScene:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    const/16 v4, 0x26

    if-ne v1, v4, :cond_1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLastChangeSceneTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 5
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentDetectedScene:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLastChangeSceneTime:J

    return v2

    :cond_0
    return v3

    .line 7
    :cond_1
    iget v1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentDetectedScene:I

    if-eq v1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLastChangeSceneTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 8
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mCurrentDetectedScene:I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLastChangeSceneTime:J

    return v2

    :cond_2
    return v3
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 1

    .line 2
    iget-object p1, p2, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean p1, p1, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->resetScene()V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

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

    const-string p0, "AiSceneMultipleASD"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->activeRegion:Landroid/graphics/Rect;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mIsFrontCamera:Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

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
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mLatestFaceScene:I

    .line 2
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->mParsedAiScene:I

    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->cropRegion:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    iput-object v2, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->faces:[Landroid/hardware/camera2/params/Face;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->hdrMode:Ljava/lang/Byte;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;->sceneResult:I

    return-void
.end method
