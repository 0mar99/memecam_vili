.class public Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;
.super Lcom/android/camera/module/shottype/ShotTypeHandler;
.source "SuperNightShotTypeHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/shottype/ShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xad

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "ShotTypeHandler"

    const-string/jumbo v1, "super night shot type could handle"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public process()Ljava/lang/Integer;
    .locals 5

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v4}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    if-eq p0, v1, :cond_3

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0xa

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;->process()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
