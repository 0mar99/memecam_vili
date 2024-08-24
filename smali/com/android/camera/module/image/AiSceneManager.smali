.class public Lcom/android/camera/module/image/AiSceneManager;
.super Ljava/lang/Object;
.source "AiSceneManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AiSceneManager"


# instance fields
.field public volatile isResetFromMutex:Z

.field public mAiSceneEnabled:Z

.field public mCurrentAiScene:I

.field public mHasAiSceneFilterEffect:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/image/AiSceneManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    return p1
.end method

.method private realConsumeAiSceneResult(IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    move p1, v2

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;->setCvStyleEffect(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v1

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getCurrentAiSceneLevel()I

    move-result v1

    if-ne v1, p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_6

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    .line 9
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAiSceneResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; isReset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AiSceneManager"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    const/16 v5, 0x19

    const/4 v6, 0x1

    if-nez v4, :cond_8

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOo()Z

    move-result v4

    if-nez v4, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    if-ne p1, v5, :cond_7

    move v7, v6

    goto :goto_0

    :cond_7
    move v7, v2

    :goto_0
    invoke-virtual {v4, v7}, Lcom/android/camera2/CameraConfigManager;->setCameraAI30(Z)V

    :cond_8
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1b

    const/4 v4, 0x6

    const-string v7, "e"

    if-eq p1, v6, :cond_16

    const/16 v8, 0xa

    if-eq p1, v8, :cond_13

    const/16 v8, 0xf

    if-eq p1, v8, :cond_11

    const/16 v8, 0x13

    if-eq p1, v8, :cond_11

    const/4 v4, 0x3

    if-eq p1, v4, :cond_18

    const/4 v4, 0x4

    if-eq p1, v4, :cond_10

    const/4 v4, 0x7

    if-eq p1, v4, :cond_f

    const/16 v4, 0x8

    if-eq p1, v4, :cond_f

    const/16 v4, 0x22

    if-eq p1, v4, :cond_d

    const/16 v4, 0x23

    if-eq p1, v4, :cond_e

    const/16 v4, 0x25

    if-eq p1, v4, :cond_d

    const/16 v4, 0x26

    if-eq p1, v4, :cond_c

    packed-switch p1, :pswitch_data_0

    .line 14
    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {v4}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRPreference()V

    .line 15
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    sget-object v4, Lcom/android/camera/constant/UpdateConstant;->AI_SCENE_CONFIG:[I

    invoke-interface {v3, v4}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto/16 :goto_1

    .line 17
    :pswitch_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0oOOo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 19
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_9
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v3, v6, [I

    const/16 v4, 0xb

    aput v4, v3, v2

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    sget-object v3, Lcom/android/camera/constant/UpdateConstant;->AI_SCENE_CONFIG:[I

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_a
    move p1, v2

    goto/16 :goto_1

    .line 23
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 24
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    const/16 v4, 0xab

    if-eq p2, v4, :cond_b

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-direct {p0, p2, v5}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    .line 26
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    .line 27
    invoke-direct {p0, v5}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    .line 28
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 29
    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRPreference()V

    .line 30
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v2, [I

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    .line 32
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result v3

    .line 34
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 35
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-ne v4, v5, :cond_a

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v4

    if-nez v4, :cond_a

    if-nez v3, :cond_a

    .line 39
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    .line 40
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    return-void

    .line 42
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    :cond_e
    move v3, v2

    goto/16 :goto_2

    .line 43
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 44
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :cond_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 46
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera2/CameraConfigManager;->setContrast(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 48
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    new-array v3, v6, [I

    const/16 v4, 0x1e

    aput v4, v3, v2

    .line 49
    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    goto/16 :goto_1

    .line 50
    :cond_11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v4, :cond_12

    add-int/lit8 v5, v5, 0x1

    .line 51
    :cond_12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraConfigManager;->setSharpness(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 53
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "3"

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "1"

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    new-array v4, v6, [I

    const/16 v5, 0xc1

    aput v5, v4, v2

    .line 58
    invoke-interface {v3, v7, v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    const-string v3, "0"

    .line 59
    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    .line 60
    :cond_15
    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 61
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateOIS()V

    goto :goto_1

    .line 62
    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    .line 63
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 64
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera2/CameraConfigManager;->setSharpness(I)V

    :cond_18
    :goto_1
    move v3, v6

    .line 66
    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 67
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    .line 68
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    if-eqz v3, :cond_19

    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    .line 70
    :cond_19
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;->setCvStyleEffect(I)V

    if-nez p2, :cond_1a

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 72
    :cond_1a
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v6, [I

    const/16 p2, 0xd

    aput p2, p1, v2

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_1b
    const/16 p2, 0x17

    .line 73
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    :cond_1c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setAiSceneEffect(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAiSceneEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiSceneManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 6
    invoke-direct {p0, v3}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    const-string/jumbo p0, "supportAi30: AI 3.0 back camera in HUMAN SCENE not apply filter! reset AiSceneEffect! "

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo p0, "setAiSceneEffect: front camera nonsupport!"

    .line 9
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xab

    if-ne v0, v2, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oOOo()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string/jumbo p0, "setAiSceneEffect: portrait mode nonsupport!"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "setAiSceneEffect: scene = 0 but portrait lighting is on..."

    .line 13
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    .line 16
    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v2, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProColorEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "ProColor is enable, disable AI filter"

    .line 18
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_c

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    .line 23
    iget-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v1, :cond_9

    if-nez p1, :cond_9

    .line 24
    sget-object p1, Lcom/android/camera/effect/render/FilterType;->A_COMMON:Lcom/android/camera/effect/render/FilterType;

    invoke-static {p1}, Lcom/android/camera/effect/EffectController;->createAiSceneEffectId(Lcom/android/camera/effect/render/FilterType;)I

    move-result p1

    goto :goto_0

    .line 25
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    goto :goto_0

    .line 26
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    .line 27
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(IZ)V

    .line 28
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_b

    move v3, v2

    :cond_b
    iput-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mHasAiSceneFilterEffect:Z

    return-void

    .line 29
    :cond_c
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAiSceneEffect: scene unknown: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private trackAISceneChanged(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAISceneChanged(IILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/image/AiSceneManager;->consumeAiSceneResult(IZ)V

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    return-void
.end method

.method public consumeAiSceneResult(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "AiSceneManager"

    const-string p1, "consumeAiSceneResult : camera device is null"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/image/AiSceneManager;->realConsumeAiSceneResult(IZ)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p1

    const/4 p2, -0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p0

    const/16 p1, 0x23

    if-eq p0, p1, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setASDScene(I)V

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v1, [I

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public getCurrentAiScene()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    return p0
.end method

.method public resetAiSceneInDocumentModeOn()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 6
    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO00o;-><init>(Lcom/android/camera/module/image/AiSceneManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public resetAiSceneInHdrOrFlashOn()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/image/AiSceneManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/image/AiSceneManager$1;-><init>(Lcom/android/camera/module/image/AiSceneManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentAiScene(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    return-void
.end method

.method public updateAiScene()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "AiSceneManager"

    const-string/jumbo v0, "updateAiScene fail, mCamera2Device is null"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    .line 7
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setAiASDEnable(Z)V

    .line 8
    iget-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    .line 11
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v2, :cond_5

    .line 12
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setCameraAI30(Z)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    .line 14
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setASDScene(I)V

    .line 15
    iget-boolean p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz p0, :cond_6

    .line 16
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setASDPeriod(I)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xa
        0xd
    .end array-data
.end method
