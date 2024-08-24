.class public Lcom/android/camera/features/mode/idcard/IdCardModule;
.super Lcom/android/camera/module/Camera2Module;
.source "IdCardModule.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IdCardModule"


# instance fields
.field public final mIDCardPaths:[Ljava/lang/String;

.field public final mIDCardUris:[Landroid/net/Uri;

.field public volatile mJumpToEdit:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iput-object v1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardPaths:[Ljava/lang/String;

    new-array v0, v0, [Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    return-void
.end method

.method public static synthetic OooOOO()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    return-void
.end method

.method public static synthetic OooOOO0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->impl2()Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->switchNextPage()V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawFace(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setPinFace(Z)V

    return-void
.end method

.method private callGalleryIDCardPage([Ljava/lang/String;Lcom/android/camera/Camera;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mode/idcard/IdCardModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "callGalleryIDCardPage"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getEntranceMode(I)I

    move-result v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.extraphoto.action.EDIT_IDCARD_PHOTO"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/android/camera/Util;->photoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 7
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/android/camera/Util;->photoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "android.intent.extra.STREAM"

    .line 8
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string/jumbo v2, "privacyWatermark"

    .line 11
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {v1, v3}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    :cond_1
    const p1, 0x8c35

    .line 14
    invoke-static {p2, v1, p1}, Lcom/android/camera/Util;->startActivityForResultCatchException(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    .line 15
    iget-boolean p0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    .line 16
    invoke-virtual {p2, p0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_2
    return-void
.end method

.method private clearPrevPictures()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->delete([Landroid/net/Uri;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public changeScreenOrientation()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->isNeedRotationByChangeScreen(I)Z

    move-result v1

    .line 3
    sget-object v2, Lcom/android/camera/features/mode/idcard/IdCardModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenOrientation needRotationByChangeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public forIDCardResult()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    return-void
.end method

.method public generateFileTitle()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->impl2()Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CARD_PICTURE_2"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->blockSnapClickUntilSaveFinish(Z)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->generateFileTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPictureFormatSuitableForShot(II)I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x4

    .line 5
    sget-object v3, Lcom/android/camera/features/mode/idcard/IdCardModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSaveFinishIfNeed title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p2}, Lcom/android/camera/storage/Storage;->isIdCardPicture(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ".jpg"

    .line 7
    invoke-static {p2, v2}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {p2}, Lcom/android/camera/storage/Storage;->isIdCardPictureOne(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    aget-object p2, p2, v0

    if-eqz p2, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardPaths:[Ljava/lang/String;

    aput-object v2, p2, v0

    .line 12
    iget-object p0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    aput-object p1, p0, v0

    .line 13
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO0O0;

    invoke-virtual {p0, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    const/16 v0, 0x3d

    .line 15
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    :cond_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO0OO;

    invoke-virtual {p2, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 17
    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardPaths:[Ljava/lang/String;

    const/4 v0, 0x1

    aput-object v2, p2, v0

    .line 18
    iget-object v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:[Landroid/net/Uri;

    aput-object p1, v2, v0

    .line 19
    invoke-direct {p0, p2, v1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->callGalleryIDCardPage([Ljava/lang/String;Lcom/android/camera/Camera;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 20
    invoke-static {p1}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->delete(Landroid/net/Uri;)I

    :cond_7
    return-void
.end method

.method public isInQCFAMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInQCFAMode()Z

    move-result p0

    return p0
.end method

.method public isNeedSequence()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFastShot()Z

    move-result p0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO0()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mode/idcard/IdCardModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy: do clearPrevPictures"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    :cond_0
    return-void
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectPictureTaken(Ljava/util/Map;I)V

    .line 3
    invoke-virtual {p0, p1, p4, p2, p5}, Lcom/android/camera/module/Camera2Module;->trackCaptureModuleInfo(Ljava/util/Map;IZZ)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    move-object v0, p0

    move v1, p4

    move-object v3, p3

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->trackBeautyInfo(IZLcom/android/camera/fragment/beauty/BeautyValues;J)V

    return-void
.end method

.method public updateASD()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setASDEnable(Z)V

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    return-void
.end method

.method public updateFace()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0oO/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->stopFaceDetection(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateFlawDetect()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/camera/HybridZoomingSystem;->isZoomRatioNone(FZ)Z

    move-result p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setFlawDetectEnable(Z)V

    :cond_0
    return-void
.end method
