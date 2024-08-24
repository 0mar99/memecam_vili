.class public Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;
.super Ljava/lang/Object;
.source "CompletablePreFixCamera2Setup.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/CompletableOnSubscribe;",
        "Lio/reactivex/Observer<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreFixCamera2Setup"


# instance fields
.field public isFromVoiceControl:Z

.field public mEmitter:Lio/reactivex/CompletableEmitter;

.field public mFromScreenSlide:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastMode:Lcom/android/camera/module/Module;

.field public mModuleChanged:Z

.field public mNeedBlur:Z

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mSkipChangeModule:Z

.field public mStartFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/ui/RenderEngineAdapter;Landroid/content/Intent;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz p2, :cond_0

    .line 3
    iget-boolean v0, p2, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mNeedBlur:Z

    .line 4
    iget-boolean v0, p2, Lcom/android/camera/module/loader/StartControl;->mFromScreenSlide:Z

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mFromScreenSlide:Z

    .line 5
    iget-boolean v0, p2, Lcom/android/camera/module/loader/StartControl;->mSkipChangeModule:Z

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mSkipChangeModule:Z

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 6
    iget p2, p2, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    .line 8
    iput-object p3, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 9
    iput-object p4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    .line 10
    iput-boolean p5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    .line 11
    iput-boolean p6, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isFromVoiceControl:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "loadSettings:"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "loadSettings:"

    const-string v0, "error"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeLastModule()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/module/Module;->release(Z)V

    return-void
.end method

.method private isLastModuleAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadSettings()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemCloud()Lcom/android/camera/data/cloud/DataCloudItemFeature;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/android/camera/resource/conf/ConfCacheRequest;

    invoke-direct {v0}, Lcom/android/camera/resource/conf/ConfCacheRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/camera/resource/conf/ConfSettingRequest;

    invoke-direct {v1}, Lcom/android/camera/resource/conf/ConfSettingRequest;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 4
    invoke-static {v0, p0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oO;

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mSkipChangeModule:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "switch_prefix_camera_setup"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mEmitter:Lio/reactivex/CompletableEmitter;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: mIntent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "PreFixCamera2Setup"

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    if-eqz v3, :cond_1

    .line 9
    iget-boolean v2, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isFromVoiceControl:Z

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    move-result-object v2

    .line 11
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 12
    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openCamera(IILio/reactivex/Observer;Z)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->loadSettings()V

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Ooo0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/db/item/DbItemSaveTask;->markAllDepartedTask(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openCamera(IILio/reactivex/Observer;Z)V

    .line 20
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModuleChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " LastMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-nez v5, :cond_3

    const-string/jumbo v5, "null"

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-boolean v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mNeedBlur:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v4, :cond_4

    .line 22
    iget-boolean v5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mFromScreenSlide:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(ILjava/lang/Object;)V

    .line 23
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    if-eqz v4, :cond_8

    .line 24
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v4}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOOo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 27
    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->requestChangeWCGConfig()V

    .line 28
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz v4, :cond_6

    .line 29
    invoke-interface {v4}, Lcom/android/camera/module/Module;->unRegisterModulePersistProtocol()V

    .line 30
    :cond_6
    iget-boolean v4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 32
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 33
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isLastModuleAlive()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->closeLastModule()V

    .line 35
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/external/NotifyExternalManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/external/NotifyExternalManager;->notifyModeAndFacing(II)V

    .line 36
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-void
.end method
