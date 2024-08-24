.class public Lcom/android/camera/module/shottype/CaptureShotTypeHandler;
.super Lcom/android/camera/module/shottype/ShotTypeHandler;
.source "CaptureShotTypeHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/shottype/ShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xaf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xba

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "ShotTypeHandler"

    const-string v0, "capture shot type could handle"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public process()Ljava/lang/Integer;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCaptureEngineType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0xa7

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/16 v7, 0x10

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_0

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result p0

    if-ne p0, v4, :cond_1

    const/16 p0, 0x14

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isRepeatingCapture()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x9

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isRawHDR()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x13

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiRawCapture()Z

    move-result v0

    const/16 v2, 0x8

    const-string v5, "ShotTypeHandler"

    if-eqz v0, :cond_6

    const-string v0, "multi raw case"

    .line 12
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oooo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 16
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiFrameCapture()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "multi frame case"

    .line 18
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isCupCapture()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "multi raw case for cup"

    .line 22
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isDngPostProc()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0xe

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 29
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isRepeatingCapture()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 32
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result v0

    if-ne v0, v3, :cond_c

    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result p0

    if-ne p0, v4, :cond_c

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 34
    :cond_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRawOn()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 36
    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/CaptureShotTypeHandler;->process()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
