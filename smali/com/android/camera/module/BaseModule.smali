.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/module/common/IUserEventMgr;
.implements Lcom/android/camera/module/common/ISurfaceTextureMgr;
.implements Lcom/android/camera/module/loader/camera2/FocusManager$Listener;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;
.implements Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera/protocol/protocols/EvChangedProtocol;
.implements Lcom/android/camera/protocol/protocols/ZoomProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$ModuleConsumer;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "BaseModule"


# instance fields
.field public mActivity:Lcom/android/camera/Camera;

.field public mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

.field public mAsdInterceptorChain:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field public mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

.field public mDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDoubleTapedTime:J

.field public mHandler:Landroid/os/Handler;

.field public mInStartingFocusRecording:Z

.field public final mLensDirtyMgr:Lcom/android/camera/lensdirty/LensDirtyManager;

.field public mMessageId:I

.field public mModuleDevice:Lcom/android/camera/features/mode/IModuleDevice;

.field public mModuleIndex:I

.field public mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

.field public mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field public mTitleId:I

.field public final mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

.field public mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

.field public mUpdateWorkThreadEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "[I>;"
        }
    .end annotation
.end field

.field public mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/lensdirty/LensDirtyManager;

    invoke-direct {v0}, Lcom/android/camera/lensdirty/LensDirtyManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mLensDirtyMgr:Lcom/android/camera/lensdirty/LensDirtyManager;

    .line 3
    new-instance v0, Lcom/android/camera/statistic/CameraTrackInfo;

    invoke-direct {v0}, Lcom/android/camera/statistic/CameraTrackInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

    .line 4
    new-instance v0, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initMiscManager()V

    return-void
.end method

.method public static synthetic OooO00o(IILcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearIndicator(I)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method public static synthetic OooO0Oo()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    const v3, 0x7f120156

    const-wide/16 v4, 0x1388

    const-string v1, "auto_hibernation_desc"

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/BaseModule;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/BaseModule;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private isTeleSupportVideoQuality()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb7

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xac

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb3

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0xb9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd5

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd6

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    .line 5
    :goto_0
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v2, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->isSupportVideoQuality(II)Z

    move-result p0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(II)Z

    move-result p0

    :goto_1
    return p0
.end method

.method private isTrackFocusOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZoomRatioConversionRequired()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xad

    if-eq v0, v1, :cond_3

    const/16 v1, 0xaf

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xba

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    return v3

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    .line 6
    :cond_3
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result p0

    return p0

    :cond_4
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetZoomScaled()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetZoomScaled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomScaled(F)V

    return-void
.end method

.method private setCameraDevice(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isZoomSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setZoomSupported(Z)V

    .line 3
    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 6
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oOo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    :cond_1
    return-void
.end method

.method private setIgnoreTouchEvent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setIgnoreTouchEvent(Z)V

    return-void
.end method

.method private showAutoHibernationFragment()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->showAutoHibernation()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->registerProtocol()V

    .line 7
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setModeIndex(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->initOrientation(I)V

    const/4 v1, 0x2

    const v2, 0x7f130176

    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "AutoHibernation"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private updateUltraWideCapability(F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUltraWideCapability: currZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModule"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    const-string v0, "BaseModule"

    const-string v1, "enterAutoHibernation"

    .line 28
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setWindowBrightness(I)V

    .line 30
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setAutoHibernationMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(II[BI)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "BaseModule"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "onPreviewPixelsRead: null focusManager"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->initSaliencyChecker(II)V

    .line 7
    iget-object v2, v0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    if-eqz v2, :cond_2

    array-length v2, v2

    array-length v3, p3

    if-eq v2, v3, :cond_3

    .line 8
    :cond_2
    array-length v2, p3

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    .line 9
    :cond_3
    iget-object v0, v0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    const/4 v2, 0x3

    if-ne p4, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateFocusArea(Z)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 12
    invoke-interface {p4}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->getFocusX()I

    move-result v4

    invoke-interface {p4}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->getFocusY()I

    move-result p4

    invoke-virtual {p0, v4, p4}, Lcom/android/camera/module/BaseModule;->updateFocusAreaForAF(II)V

    .line 13
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isDumpImageEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 14
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    mul-int p4, p1, p2

    mul-int/lit8 p4, p4, 0x4

    .line 15
    invoke-static {p3, v3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 16
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p4, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v0

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p1

    const-string/jumbo p1, "sdcard/DCIM/Camera/SaliencyCheck_%d_%dx%d.jpg"

    .line 18
    invoke-static {p3, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->saveJPEGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPreviewPixelsRead dump: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string/jumbo p0, "onPreviewPixelsRead: isAlive false"

    .line 21
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x18

    aput v1, p1, v0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->serialize()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSupportAFSaliencyCheckOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BaseModule"

    const-string/jumbo v2, "setFrameAvailable, initSaliencyChecker"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getReadPixelsWidth()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getReadPixelsHeight()I

    move-result v0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->initSaliencyChecker(II)V

    :cond_0
    return-void
.end method

.method public addZoom(F)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/BaseModule;->onZoomingActionUpdate(FI)Z

    move-result p0

    return p0
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-direct {v1, v2}, Lcom/android/camera/module/interceptor/camera/PreviewDebugInfoMultipleASD;-><init>(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 4
    :cond_0
    new-instance v1, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/camera/LensDirtyVersionOneSimpleASD;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 5
    new-instance v1, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/camera/SATFallbackDetectedSimpleASD;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 6
    new-instance v1, Lcom/android/camera/module/interceptor/camera/BokehFallbackDetectedSimpleASD;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/camera/BokehFallbackDetectedSimpleASD;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 7
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 9
    :cond_1
    new-instance p0, Lcom/android/camera/module/interceptor/camera/CameraThermalResultSimpleASD;

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/interceptor/camera/CameraThermalResultSimpleASD;-><init>(Lcom/android/camera/ThermalDetector;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public applyZoomRatio()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    return-void
.end method

.method public applyZoomRatio(F)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio(F)F

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyZoomRatio(): apply zoom ratio to device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setZoomRatio(F)V

    return-void
.end method

.method public final attachModuleDevice(Lcom/android/camera/features/mode/IModuleDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleDevice:Lcom/android/camera/features/mode/IModuleDevice;

    return-void
.end method

.method public cancelFocus(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFocus resetFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setFocusMode(I)V

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->cancelFocus(I)V

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    :cond_6
    return-void
.end method

.method public changeScreenOrientation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->isNeedRotationByChangeScreen(I)Z

    move-result v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeScreenOrientation needRotationByChangeScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseModule"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeZoom4Crop()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportCropFrontMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOooo()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/16 v4, 0xb4

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-array v0, v3, [F

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v3

    aput v3, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_6
    :goto_1
    new-array v0, v3, [F

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v3

    aput v3, v0, v2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOO0()F

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    :goto_3
    return-void
.end method

.method public checkActivityOrientation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDisplayRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    :cond_0
    return-void
.end method

.method public checkCallingState()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v2, v0, :cond_1

    const v0, 0x7f12031e

    const v2, 0x7f12031c

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->showConfirmMessage(II)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "BaseModule"

    if-nez v0, :cond_0

    const-string p0, "checkDisplayOrientation: activity == null"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setDisplayRotation(I)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDisplayRotation()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraDisplayOrientation(I)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDisplayOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/Util;->getRenderOrientation(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/SurfaceTextureScreenNail;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public final checkSatFallback(ZIJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v1

    const-string v2, "BaseModule"

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isWaitingSnapshot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p2}, Lcom/android/camera2/Camera2Proxy;->sendSatFallbackRequest(I)I

    move-result p2

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkSatFallback: lastFallbackRequestId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",fallbackDetected = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setSatFallback(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastSatFallbackRequestId(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getLastSatFallbackRequestId()I

    move-result v0

    if-ltz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getLastSatFallbackRequestId()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, p2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSatFallback: fallbackDetected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFallbackProcessed = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFallbackProcessed()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " requestId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFallbackProcessed()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setSatFallback(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastSatFallbackRequestId(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isWaitingSnapshot()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 21
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract closeCamera()V
.end method

.method public varargs consumePreference([I)V
    .locals 0

    return-void
.end method

.method public createCameraManager()Lcom/android/camera/module/common/BaseModuleCameraManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;-><init>(Lcom/android/camera/module/Module;)V

    return-object v0
.end method

.method public createModuleStateManager()Lcom/android/camera/module/common/BaseModuleStateManager;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/module/common/BaseModuleStateManager;

    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleStateManager;-><init>()V

    return-object p0
.end method

.method public enableCameraControls(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraControls: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseModule"

    .line 3
    invoke-static {v2, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p1, v1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/module/BaseModule;->setIgnoreTouchEvent(Z)V

    return-void
.end method

.method public enterAutoHibernation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getEnterAutoHibernationCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setEnterAutoHibernationCount(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->showAutoHibernationFragment()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateAutoHibernationFirstRecordingTime()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOOO;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public exitAutoHibernation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setAutoHibernationMode(Z)V

    const-string v0, "BaseModule"

    const-string v1, "exitAutoHibernation"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0oO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0oO;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0O;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 0

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public focusCenter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const-string v0, "BaseModule"

    const-string/jumbo v1, "restore continuous center focus when switching lens focus in SAT"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusState(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->cancelFocus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getActionProcess()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ActionProcessing;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public getActualCameraId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p0

    return p0
.end method

.method public getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    return-object p0
.end method

.method public getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    return-object p0
.end method

.method public getCameraRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object p0

    return-object p0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceBasedZoomRatio(F)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isZoomRatioConversionRequired()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    sget v3, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr p1, v1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr p0, v0

    .line 11
    invoke-static {p1, v1, p0}, Lcom/android/camera/HybridZoomingSystem;->clamp(FFF)F

    move-result p0

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    div-float/2addr p1, v0

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 14
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result p0

    .line 15
    invoke-static {p1, v2, p0}, Lcom/android/camera/HybridZoomingSystem;->clamp(FFF)F

    move-result p0

    :goto_1
    move p1, p0

    goto/16 :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    const/16 v3, 0xb4

    const/16 v4, 0xa2

    if-ne v0, v1, :cond_7

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0o()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    .line 20
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-eq p0, v4, :cond_5

    if-ne p0, v3, :cond_6

    :cond_5
    if-eqz v0, :cond_6

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p0

    div-float/2addr p1, p0

    .line 23
    invoke-static {p1, v2, v1}, Lcom/android/camera/HybridZoomingSystem;->clamp(FFF)F

    move-result p1

    goto :goto_2

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 25
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0o()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    .line 27
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-eq p0, v4, :cond_8

    if-ne p0, v3, :cond_9

    :cond_8
    if-eqz v0, :cond_9

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 29
    :cond_9
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p0

    div-float/2addr p1, p0

    .line 30
    invoke-static {p1, v2, v1}, Lcom/android/camera/HybridZoomingSystem;->clamp(FFF)F

    move-result p1

    :cond_a
    :goto_2
    return p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMaxZoomRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getMinZoomRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    return p0
.end method

.method public getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    return-object p0
.end method

.method public getMutexCallback()Lcom/android/camera/MutexModeManager$MutexCallBack;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    return-object v0
.end method

.method public getMutexModePicker()Lcom/android/camera/MutexModeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleDevice:Lcom/android/camera/features/mode/IModuleDevice;

    invoke-interface {p0}, Lcom/android/camera/features/mode/IOperatingMode;->getOperatingMode()I

    move-result p0

    return p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getScreenDelay()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0xea60

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x7530

    :goto_1
    return p0
.end method

.method public getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;
    .locals 0

    return-object p0
.end method

.method public getTrackInfo()Lcom/android/camera/statistic/CameraTrackInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

    return-object p0
.end method

.method public getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;
    .locals 0

    return-object p0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public getZoomRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p0

    return p0
.end method

.method public final gotoGallery()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_0
    return-void
.end method

.method public handleCountDownSnapClickVibrator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    :goto_0
    return-void
.end method

.method public handlePendingScreenSlide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->getPendingScreenSlideKeyCode()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process pending screen slide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->getPendingScreenSlideKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->getPendingScreenSlideKeyCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->setPendingScreenSlideKeyCode(I)V

    :cond_0
    return-void
.end method

.method public handlePreviewTouchEvent(ZLandroid/graphics/Point;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onSingleTapUp(IIZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isShowCaptureButton()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportFocusShoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->doSnap(I)V

    :cond_0
    return-void
.end method

.method public handleVolumeKeyEvent(ZZIZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f1207f6

    const v2, 0x7f1207f5

    if-eqz p4, :cond_1

    .line 2
    invoke-static {v2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p4

    invoke-static {p4}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p4

    invoke-static {p4}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p4

    invoke-static {p4}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object p4

    const/16 v3, 0xad

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    if-eq v3, v4, :cond_3

    const/16 v3, 0xba

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-static {v2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 9
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v3, p4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setVolumeKeyFunction(Ljava/lang/String;)V

    .line 10
    invoke-static {v2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x14

    if-nez v3, :cond_b

    .line 11
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isWideSelfieModule()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f1207f8

    .line 13
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomSupported()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->onZoomingActionStart(I)V

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->zoomIn(F)V

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->zoomOut(F)V

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->onZoomingActionEnd(I)V

    const-string/jumbo p0, "volume"

    .line 20
    invoke-static {p0, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomAdjusted(Ljava/lang/String;Z)V

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->notSupportUltraZoom()Z

    goto :goto_1

    .line 22
    :cond_9
    invoke-static {v2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p4, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p4, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setVolumeKeyFunction(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v4, p1, p3, p2}, Lcom/android/camera/module/BaseModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :goto_1
    return v1

    :cond_a
    return v3

    .line 25
    :cond_b
    :goto_2
    invoke-virtual {p0, v4, p4, p3, p2}, Lcom/android/camera/module/BaseModule;->performKeyClicked(ILjava/lang/String;IZ)V

    return v1
.end method

.method public hasCameraException()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isCameraDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isOpenCameraFail()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isCameraHardwareError()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->couldShowErrorDialog()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public initByCapability(Lcom/android/camera2/CameraCapabilities;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "BaseModule"

    const-string p1, "init by capability(capability == null)"

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAELockSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setAeLockSupported(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAWBLockSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setAwbLockSupported(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFocusAreaSupported(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAERegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setMeteringAreaSupported(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isMeteringAreaSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setAELockOnlySupported(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAELockOnlySupported()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v0

    :goto_2
    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFocusOrAELockSupported(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string/jumbo v3, "pref_camera_ae_af_lock_support_key"

    .line 11
    invoke-virtual {p1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOO()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 13
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAELockOnlySupported()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    .line 14
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->set3ALockSupported(Z)V

    return-void
.end method

.method public initMiscManager()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->createModuleStateManager()Lcom/android/camera/module/common/BaseModuleStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->createCameraManager()Lcom/android/camera/module/common/BaseModuleCameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    new-instance v0, Lcom/android/camera/module/common/BaseAppStateManager;

    invoke-direct {v0}, Lcom/android/camera/module/common/BaseAppStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 4
    new-instance v0, Lcom/android/camera/module/common/BaseUserEventManager;

    invoke-direct {v0}, Lcom/android/camera/module/common/BaseUserEventManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    return-void
.end method

.method public initZoomForBackCamera()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa7

    const/16 v3, 0xb4

    const/16 v4, 0xaf

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_26

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_21

    if-eq v1, v4, :cond_1f

    if-eq v1, v3, :cond_26

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xba

    if-eq v1, v2, :cond_14

    const/16 v2, 0xbc

    if-eq v1, v2, :cond_20

    const/16 v2, 0xd6

    if-eq v1, v2, :cond_13

    const/16 v2, 0xac

    if-eq v1, v2, :cond_11

    const/16 v2, 0xad

    if-eq v1, v2, :cond_f

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_e

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_d

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_c

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 5
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 7
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 8
    :cond_0
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_9

    .line 9
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 11
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 12
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 14
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v7

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOoO()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 18
    :cond_4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 19
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 20
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 21
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v7

    .line 23
    :cond_6
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 24
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByUltraWideCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 26
    :cond_7
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto/16 :goto_8

    .line 29
    :cond_9
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 30
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 31
    :cond_a
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 32
    :cond_b
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 33
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 34
    invoke-virtual {p0, v6}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 35
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 36
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 37
    :cond_e
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 38
    invoke-virtual {p0, v6}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 39
    :cond_f
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 40
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    goto :goto_3

    .line 41
    :cond_10
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 42
    :goto_3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 43
    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 44
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 45
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 46
    :cond_12
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 48
    :cond_13
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 49
    invoke-virtual {p0, v6}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 50
    :cond_14
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 51
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 52
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 53
    :cond_15
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_17

    .line 54
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 55
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 56
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 57
    :cond_16
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 58
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 59
    :cond_17
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 60
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_4

    .line 61
    :cond_18
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 62
    :cond_19
    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 63
    :cond_1a
    :pswitch_2
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_1c

    .line 64
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 66
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 67
    :cond_1b
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto/16 :goto_8

    .line 69
    :cond_1c
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 70
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_5

    .line 71
    :cond_1d
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 72
    :cond_1e
    :goto_5
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 73
    :cond_1f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 74
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 75
    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->getMaximumOpticalZoomRatio(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 76
    :cond_20
    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMaximumOpticalZoomRatio(I)F

    move-result v2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    .line 77
    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    goto/16 :goto_8

    .line 78
    :cond_21
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_24

    .line 79
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 80
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 81
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 82
    :cond_22
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 83
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 84
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOoO()F

    move-result v1

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 85
    :cond_23
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto/16 :goto_8

    .line 87
    :cond_24
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 88
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 89
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 90
    :cond_25
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 91
    :cond_26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 92
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearSwitchOn()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 93
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 94
    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->getMaximumOpticalZoomRatio(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 95
    :cond_27
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 96
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "macro"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto/16 :goto_7

    .line 99
    :cond_28
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 100
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 101
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ultra"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto/16 :goto_6

    .line 103
    :cond_29
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 104
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v1, v3, :cond_2c

    .line 105
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isAuxCamera(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 106
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto/16 :goto_8

    .line 108
    :cond_2a
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 109
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto/16 :goto_8

    .line 111
    :cond_2b
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 112
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 113
    :cond_2c
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isAuxCamera(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 114
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 115
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 116
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    .line 117
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    mul-float/2addr v2, v0

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_8

    .line 119
    :cond_2d
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_8

    .line 120
    :cond_2e
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 121
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 122
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 123
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    .line 124
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    mul-float/2addr v2, v0

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_8

    .line 126
    :cond_2f
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v1

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_8

    .line 127
    :cond_30
    invoke-virtual {p0, v7}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 128
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_8

    .line 129
    :cond_31
    :goto_6
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 130
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_8

    .line 131
    :cond_32
    :goto_7
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 132
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initializeCapabilities()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setContinuousFocusSupported(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->initByCapability(Lcom/android/camera2/CameraCapabilities;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoomRangeFromCapabilities()V

    return-void
.end method

.method public initializeFocusManager()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    new-instance v7, Lcom/android/camera/module/loader/camera2/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v6

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;-><init>(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/module/loader/camera2/FocusManager$Listener;ZLandroid/os/Looper;Z)V

    .line 6
    invoke-interface {v0, v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFocusManager(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setPreviewSize(II)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setPreviewSize(II)V

    :goto_1
    return-void
.end method

.method public final initializeMetaDataCallback(Lcom/android/camera/module/BaseModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/camera/module/BaseModule;",
            ">(TM;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 2
    new-instance v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->createAndStart(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public initializeZoomRangeFromCapabilities()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initZoomForBackCamera()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initializeZoomRatio()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataRunning()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->toFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xba

    if-ne v2, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->consumeTransientZoomRatio()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 7
    :cond_0
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    .line 9
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeZoomRatio isSupportFrontZoom:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BaseModule"

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/BaseModule;->updateUltraWideCapability(F)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOooo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportCropFrontMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v1

    if-eqz v4, :cond_6

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOO0()F

    move-result v0

    .line 18
    :cond_6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    goto :goto_2

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    .line 20
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeZoomRatio zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBlockSnap()Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result p0

    return p0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result p0

    if-nez p0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result p0

    if-nez p0, :cond_4

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public isCaptureIntent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result p0

    return p0
.end method

.method public isDeparted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result p0

    return p0
.end method

.method public isDeviceAndModuleAlive()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/module/common/ModuleUtil;->logWhenStateError(Lcom/android/camera/module/common/ModuleCameraManagerInterface;Lcom/android/camera/module/common/BaseModuleStateManagerInterface;)V

    :cond_1
    return v0
.end method

.method public isHeicPreferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIgnoreTouchEvent()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isIgnoreTouchEvent()Z

    move-result p0

    return p0
.end method

.method public isInTapableRect(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getUserVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->judgeTapableRectByUiStyle()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getUserVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v1, p0}, Lcom/android/camera/Util;->getTapableRectWithEdgeSlop(ZLandroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isInVideoSAT()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isMainBackCamera()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedRotationByChangeScreen(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    const/4 p0, -0x1

    const/4 v2, 0x1

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_4

    const/16 p0, 0xb4

    if-ne v0, p0, :cond_5

    goto :goto_0

    :cond_3
    const/16 p0, 0x5a

    if-eq v0, p0, :cond_4

    const/16 p0, 0x10e

    if-ne v0, p0, :cond_5

    :cond_4
    :goto_0
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public isParallelSessionEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPostProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReceiveDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRepeatingRequestInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShot2GalleryOrEnableParallel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAFSaliency()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSupportAFSaliencyCheckOn(I)Z

    move-result v0

    const-string v1, "BaseModule"

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getSatMasterCameraId()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAFSaliency mSatMasterCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wide"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAFSaliency pro mode, lensType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportAFSaliency="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportFocusShoot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTextureExpired()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getSurfaceCreatedTimestamp()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isThermalThreshold()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnIncorruptible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoCastIntent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWaitingDoubleTapResult()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/BaseModule;->mDoubleTapedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public join([I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public judgeTapableRectByUiStyle()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isRecording()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public keepAutoHibernation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseModule"

    const-string v1, "keepAutoHibernation"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x41

    const-wide/32 v1, 0x2ab98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public keepScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public listenPhoneState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/AudioRecordingDetector;->getInstance()Lcom/android/camera/AudioRecordingDetector;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v0}, Lcom/android/camera/AudioRecordingDetector;->setAudioRecordingListener(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/camera/AudioRecordingDetector;->getInstance()Lcom/android/camera/AudioRecordingDetector;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/AudioRecordingDetector;->getInstance()Lcom/android/camera/AudioRecordingDetector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/AudioRecordingDetector;->setAudioRecordingListener(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/camera/AudioRecordingDetector;->getInstance()Lcom/android/camera/AudioRecordingDetector;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "BaseModule"

    const-string p1, "listenPhoneState:params null,listen is returning."

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public mapTapCoordinate(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-void
.end method

.method public maySwitchCameraLens(FF)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p0

    cmpg-float v0, p1, p2

    const/4 v1, 0x0

    const v2, 0x406ccccd    # 3.7f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-gez v0, :cond_3

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    cmpl-float v0, p2, v3

    if-ltz v0, :cond_0

    return v4

    :cond_0
    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    return v4

    .line 2
    :cond_1
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    if-eqz p0, :cond_6

    cmpg-float p0, p1, v2

    if-gez p0, :cond_2

    cmpl-float p0, p2, v2

    if-ltz p0, :cond_2

    move v1, v4

    :cond_2
    return v1

    :cond_3
    cmpl-float v0, p1, p2

    if-lez v0, :cond_6

    .line 3
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_4

    cmpg-float v0, p2, v2

    if-gez v0, :cond_4

    return v4

    :cond_4
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_5

    cmpg-float p0, p2, p0

    if-gez p0, :cond_5

    return v4

    :cond_5
    cmpl-float p0, p1, v3

    if-ltz p0, :cond_6

    cmpg-float p0, p2, v3

    if-gez p0, :cond_6

    move v1, v4

    :cond_6
    return v1
.end method

.method public multiCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needKeepCoverView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notSupportUltraZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCTAAgreed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method public notifyFirstFrameArrived()V
    .locals 0

    return-void
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "BaseModule"

    const-string/jumbo v3, "notifyFocusAreaUpdate not isAFSaliencyCheck"

    .line 3
    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    new-array p1, v2, [I

    aput v0, p1, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public onActionStop()V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isVideoCastIntent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ModeChangeController;->resetToCommonMode()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "SD card available"

    .line 5
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto/16 :goto_1

    :cond_1
    const-string p1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOO;

    invoke-virtual {p0, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const-string p0, "media scanner started"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkStoragePermissions()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isIsNewCTAShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_4
    const-string p0, "media scanner finisheded"

    .line 15
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "SD card unavailable"

    .line 16
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/FileCompat;->updateSDPath()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 19
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkStoragePermissions()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isIsNewCTAShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCameraError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraHardwareError(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->releaseAll(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCameraException()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraException: mid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraException: module changed: prev = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraException: module changed: curr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isOpenCameraFail()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isCameraHardwareError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x2

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f120244

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeCapabilities()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoomRatio()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateLensDirtyDetect(Z)V

    return-void
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->initByCapability(Lcom/android/camera2/CameraCapabilities;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCapabilityChanged: mFocusAreaSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAELockOnlySupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAELockOnlySupported()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModule"

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(II)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string/jumbo v2, "onCreate: moduleIndex->%d, cameraId->%d@%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setBogusCameraId(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enumerating: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCameraDevice: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraDevice(Lcom/android/camera2/Camera2Proxy;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    new-instance p2, Lcom/android/camera/CameraErrorCallbackImpl;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p2, v0}, Lcom/android/camera/CameraErrorCallbackImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setErrorCallback(Lcom/android/camera/CameraErrorCallbackImpl;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mAudioManager:Landroid/media/AudioManager;

    .line 15
    new-instance p1, Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMutexCallback()Lcom/android/camera/MutexModeManager$MutexCallBack;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/MutexModeManager;-><init>(Lcom/android/camera/MutexModeManager$MutexCallBack;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 16
    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOO0;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOO0;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 17
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/module/BaseModule$ModuleConsumer;

    invoke-direct {p2, p0}, Lcom/android/camera/module/BaseModule$ModuleConsumer;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create disposable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1, v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setCreated(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setDeparted(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setGradienterOn(Z)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    :cond_2
    return-void

    .line 24
    :cond_3
    new-instance p0, Lcom/xiaomi/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/xiaomi/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
.end method

.method public onDeparted()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy: E. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setCreated(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->onModuleDestroy()V

    :cond_1
    const-string/jumbo p0, "onDestroy: X"

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->onDeviceKeepMoving(D)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onDoublePointDown()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateSATZooming(Z)V

    return v0
.end method

.method public onDoublePointUp()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateSATZooming(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEvChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setEvValue(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setEvState(I)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

    invoke-virtual {p2, p1}, Lcom/android/camera/statistic/CameraTrackInfo;->setEvValue(I)V

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeExposure(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0Oo()V

    :cond_2
    new-array p1, v0, [I

    const/4 p2, 0x0

    const/16 v0, 0xc

    aput v0, p1, p2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 0

    return-void
.end method

.method public onGLAndCameraReady(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onGradienterSwitched(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setGradienterOn(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SensorStateManager;->register()V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x2b
    .end array-data
.end method

.method public onInterceptZoomingEvent(FFI)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraSwitchingDuringZoomingAllowed()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByUltraWideCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v2

    if-nez v2, :cond_3

    cmpl-float v2, p1, p3

    if-ltz v2, :cond_1

    if-gez v1, :cond_1

    .line 5
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_1
    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_1b

    .line 8
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 9
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    const/16 v5, 0xad

    invoke-virtual {v2, v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0O0(I)[F

    move-result-object v2

    .line 10
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v5, :cond_4

    if-eqz v2, :cond_4

    array-length v2, v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0000o()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v0

    .line 13
    :goto_0
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v7, 0xa2

    if-ne v6, v7, :cond_5

    .line 14
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 15
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 16
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByAllPhysicalCamerasInVideoSat()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 17
    :cond_5
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v7, 0xaf

    if-ne v6, v7, :cond_6

    .line 18
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v6

    if-nez v6, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 21
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result v6

    if-eqz v6, :cond_6

    move v2, v4

    .line 22
    :cond_6
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v7, :cond_7

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v6

    if-nez v6, :cond_7

    .line 25
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v4

    :cond_7
    if-eqz v2, :cond_b

    cmpl-float v2, p1, p3

    if-ltz v2, :cond_8

    if-gez v1, :cond_8

    .line 27
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_8
    cmpg-float v2, p1, p3

    if-gez v2, :cond_9

    cmpl-float v2, p2, p3

    if-ltz v2, :cond_9

    .line 28
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_9

    .line 29
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 30
    :cond_9
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_a

    cmpl-float v2, p2, p3

    if-ltz v2, :cond_a

    .line 31
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_a

    .line 32
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 33
    :cond_a
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_b

    .line 34
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_b

    .line 35
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 36
    :cond_b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 37
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v2

    goto :goto_1

    .line 38
    :cond_c
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v2

    :goto_1
    cmpl-float v6, p1, p3

    if-ltz v6, :cond_d

    cmpg-float v8, p1, v2

    if-gez v8, :cond_d

    if-gez v1, :cond_d

    .line 39
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_d
    cmpg-float v8, p1, p3

    if-gez v8, :cond_e

    cmpl-float v9, p2, p3

    if-ltz v9, :cond_e

    cmpg-float v9, p2, v2

    if-gez v9, :cond_e

    .line 40
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_e
    if-ltz v6, :cond_12

    cmpg-float v6, p1, v2

    if-gez v6, :cond_12

    cmpl-float v6, p2, v2

    if-ltz v6, :cond_12

    .line 41
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isTeleSupportVideoQuality()Z

    move-result v6

    if-nez v6, :cond_10

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v7, :cond_f

    .line 42
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 43
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByWide()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v5, :cond_12

    .line 44
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0000O()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 45
    :cond_10
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0000O()Z

    move-result p1

    if-nez p1, :cond_11

    return v0

    .line 46
    :cond_11
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_12
    cmpl-float p1, p1, v2

    if-ltz p1, :cond_17

    cmpl-float v5, p2, p3

    if-ltz v5, :cond_17

    cmpg-float v5, p2, v2

    if-gez v5, :cond_17

    .line 47
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 48
    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isAuxCamera(I)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 49
    :cond_13
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0000O()Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    .line 50
    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 51
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 52
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p1

    if-nez p1, :cond_16

    :cond_15
    return v0

    .line 53
    :cond_16
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_17
    if-gez v8, :cond_18

    cmpl-float v5, p2, v2

    if-ltz v5, :cond_18

    .line 54
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_18
    if-ltz p1, :cond_19

    if-gez v1, :cond_19

    .line 55
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 56
    :cond_19
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_1a

    .line 57
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    .line 58
    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isMainBackCamera()Z

    move-result p1

    if-eqz p1, :cond_1b

    cmpl-float p1, p2, v2

    if-ltz p1, :cond_1b

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isTeleSupportVideoQuality()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 59
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    return v4

    :cond_1b
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x2bd

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v2, 0x2bc

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiKeyEvent;->impl2()Lcom/android/camera/protocol/protocols/MiKeyEvent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/MiKeyEvent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isUnIncorruptible()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5
    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/Camera;->isModeSwitched()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const p1, 0x7f010014

    const p2, 0x7f010015

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    invoke-interface {p2, p1}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->setPendingScreenSlideKeyCode(I)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pending screen slide: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getUnInterruptableReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModule"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->setPendingScreenSlideKeyCode(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera;->handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z

    return v3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    return v0

    :cond_0
    const/16 v1, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/16 v4, 0x19

    if-eq p1, v4, :cond_1

    const/16 v4, 0x57

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_1

    goto :goto_3

    :cond_1
    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 3
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v3

    .line 5
    :goto_2
    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 6
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiKeyEvent;->impl2()Lcom/android/camera/protocol/protocols/MiKeyEvent;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/MiKeyEvent;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_6
    return v3
.end method

.method public onLongPress(FF)V
    .locals 0

    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 0

    return-void
.end method

.method public onModuleCreated(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/StartControl;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    .line 2
    iget p1, p2, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->changeScreenOrientation()V

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V

    .line 5
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/module/BaseModule;->preTransferOrientation(II)V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p3, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientation(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result p3

    .line 4
    invoke-virtual {p1, p3}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientationCompensation(I)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BaseModule"

    const-string/jumbo v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setPaused(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUserEventMgr:Lcom/android/camera/module/common/BaseUserEventManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseUserEventManagerInterface;->setPendingScreenSlideKeyCode(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreviewLayoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v0

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->onCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 8

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreviewPixelsRead E: width="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", readPixelsType="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "BaseModule"

    invoke-static {v0, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p5, 0x3

    if-eq p4, p5, :cond_0

    const/4 p5, 0x4

    if-ne p4, p5, :cond_1

    :cond_0
    const-string/jumbo p5, "onPreviewPixelsRead isAFSaliencyCheck"

    .line 2
    invoke-static {v0, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    new-instance v7, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo0;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo0;-><init>(Lcom/android/camera/module/BaseModule;II[BI)V

    invoke-virtual {p5, v7}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    const-string/jumbo p0, "onPreviewPixelsRead X"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "onPreviewRelease: cameraId = %d, reason = %d"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->doPreviewGaussianForever()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne p2, v4, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p2, "camera.debug.skip_recover_from_provider_error"

    .line 9
    invoke-static {p2, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p1, "skip recovering from provider error"

    .line 10
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->handleCameraError(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "onPreviewSizeChanged: %dx%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onRenderRequested()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setPaused(Z)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onScale(): scale = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseModule"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string/jumbo p0, "onScale(): scale illegal 0.0"

    .line 2
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomScaled()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p3, v4

    add-float/2addr v2, p3

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomScaled(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 6
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    const/high16 v4, 0x41f00000    # 30.0f

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto/16 :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 14
    :cond_4
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v2, :cond_6

    .line 15
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 18
    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 19
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_6

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 21
    :cond_6
    :goto_0
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomScaled()F

    move-result p3

    mul-float/2addr p3, p1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScale(): delta = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mZoomRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mZoomScaled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomScaled()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    return v1

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p1

    add-float/2addr p1, p3

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomingActionUpdate(FI)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->resetZoomScaled()V

    return v0

    :cond_8
    return v1
.end method

.method public onScaleBegin(FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->notSupportUltraZoom()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->resetZoomScaled()V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onZoomingActionStart(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd()V
    .locals 2

    const-string v0, "BaseModule"

    const-string/jumbo v1, "onScaleEnd()"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateSATZooming(Z)V

    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomingActionEnd(I)V

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    return-void
.end method

.method public onShineChanged(I)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureReleased()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0

    return-void
.end method

.method public onThermalConstrained()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onVideoCastStateChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onVideoCoverCreated([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onZoomRatioChanged(FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomingActionUpdate(FI)Z

    return-void
.end method

.method public onZoomingActionEnd(I)V
    .locals 0

    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 0

    return-void
.end method

.method public onZoomingActionUpdate(FI)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onZoomingActionUpdate(): newValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", ZoomRange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 3
    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float v2, v0, p1

    if-nez v2, :cond_4

    .line 7
    sget p2, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p2, v2, v4

    if-gez p2, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->resetZoomScaled()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->resetZoomScaled()V

    :cond_3
    :goto_0
    return v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onZoomingActionUpdate(): changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomActive;->impl2()Lcom/android/camera/protocol/protocols/ZoomActive;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 13
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/protocols/ZoomActive;->updateCurrentZoomRatio(F)V

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/module/BaseModule;->onInterceptZoomingEvent(FFI)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    const/4 v4, 0x1

    if-lez v3, :cond_8

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_7

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v3, v4

    .line 16
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/BaseModule;->zoomStateChanged(FF)Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_9

    new-array v5, v6, [I

    .line 17
    fill-array-data v5, :array_0

    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 18
    :cond_9
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    :goto_3
    move v0, v4

    .line 20
    :goto_4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xa3

    if-ne v2, v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 21
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 22
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-array v0, v4, [I

    const/16 v2, 0x52

    aput v2, v0, v1

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_c
    if-eqz v3, :cond_d

    .line 24
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/module/BaseModule;->updateUltraWideCapability(F)V

    .line 26
    :cond_d
    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_f

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportTrackFocusOrTrackEye()Z

    move-result p1

    if-eqz p1, :cond_e

    new-array p1, v6, [I

    .line 28
    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_5

    :cond_e
    new-array p1, v0, [I

    .line 29
    fill-array-data p1, :array_2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_5

    :cond_f
    new-array p1, v4, [I

    const/16 v2, 0x18

    aput v2, p1, v1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 31
    :goto_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-eqz p1, :cond_10

    .line 33
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/DualController;->isButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 34
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/protocols/DualController;->updateSlideAndZoomRatio(I)Z

    .line 35
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "X"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    if-eq p2, p1, :cond_12

    if-eq p2, v0, :cond_12

    const/4 p1, 0x4

    if-ne p2, p1, :cond_11

    goto :goto_6

    :cond_11
    if-eqz p2, :cond_13

    const/4 p1, 0x6

    if-eq p2, p1, :cond_13

    .line 36
    invoke-interface {v2, v4, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_7

    :cond_12
    :goto_6
    const/16 p1, 0xe

    .line 37
    invoke-interface {v2, p1, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_13
    :goto_7
    return v4

    nop

    :array_0
    .array-data 4
        0xb
        0x1e
        0x22
        0x2a
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x56
        0x5
        0x2e
        0x2f
        0x18
    .end array-data

    :array_2
    .array-data 4
        0x2e
        0x2f
        0x18
    .end array-data
.end method

.method public openForShotWithWinFocus()V
    .locals 1

    const-string p0, "BaseModule"

    const-string/jumbo v0, "openForShotWithWinFocus"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openSettingActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    return-void
.end method

.method public abstract pausePreview()V
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public final playCameraSound(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "BaseModule"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playCameraSound: play "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    return-void

    :cond_3
    :goto_0
    const-string/jumbo p0, "playCameraSound: return"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preTransferOrientation(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientation(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientationCompensation(I)V

    return-void
.end method

.method public quickEnterAutoHibernation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseModule"

    const-string/jumbo v1, "quickEnterAutoHibernation"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    const-string v0, "BaseModule"

    const-string/jumbo v1, "registerProtocol"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ZoomProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public release(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->release()V

    return-void
.end method

.method public resetEvValue()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setExposureCompensation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    new-array v0, v1, [I

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public resetScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreBottom()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    :cond_0
    const/4 v0, 0x4

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xf1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_1
    return-void
.end method

.method public abstract resumePreview()V
.end method

.method public sendOpenFailMessage()V
    .locals 0

    return-void
.end method

.method public setActivity(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public setDeparted()V
    .locals 2

    const-string v0, "BaseModule"

    const-string/jumbo v1, "setDeparted"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->dispose()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setDeparted(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onDeparted()V

    return-void
.end method

.method public setEvValue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraConfigManager;->setExposureCompensation(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvValue()I

    move-result p0

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flashMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 7
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setFlashMode(I)V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFrameAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0oo;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOO;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public setMaxZoomRatio(F)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxZoomRatio(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    new-instance v1, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomRange(Landroid/util/Range;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    new-instance v1, Landroid/util/Range;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomRange(Landroid/util/Range;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomActive;->impl2()Lcom/android/camera/protocol/protocols/ZoomActive;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/protocols/ZoomActive;->updateZoomRatio(FF)V

    :cond_1
    return-void
.end method

.method public setMinZoomRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMinZoomRatio(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomRange(Landroid/util/Range;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    new-instance v1, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getZoomRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-direct {v1, p1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZoomRange(Landroid/util/Range;)V

    :goto_0
    return-void
.end method

.method public setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p3, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setCameraPreviewRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUserVisibleRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setVideoMaxZoomRatioByTele()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0o()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasTeleCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isTeleSupportVideoQuality()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    .line 10
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x40c00000    # 6.0f

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :goto_1
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZoomRatio(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setZoomRatio(F)V

    .line 3
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1, p0}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    return-void
.end method

.method public shouldCaptureDirectly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldReleaseLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showAutoHibernationTip()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const v3, 0x7f120156

    const-wide/16 v4, 0x1388

    const-string v1, "auto_hibernation_desc"

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method

.method public showConfirmMessage(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mTitleId:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mMessageId:I

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mTitleId:I

    .line 5
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mMessageId:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 7
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const p2, 0x104000a

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public showFocusViewWhenCaf()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showLensDirtyTip()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLensDirtyMgr:Lcom/android/camera/lensdirty/LensDirtyManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/lensdirty/LensDirtyManager;->showLensDirtyTip(Lcom/android/camera/module/Module;)V

    return-void
.end method

.method public startFocus()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "BaseModule"

    const-string/jumbo v1, "startFocus"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusOrAELockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->create(I)Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setWithFlash(Z)V

    :cond_3
    return-void
.end method

.method public abstract startPreview()V
.end method

.method public switchCameraLens(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public final thermalConstrained()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oooo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oooo;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", created = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", departed = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V
    .locals 12

    move-object v0, p0

    if-nez p1, :cond_0

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

    invoke-virtual {v1}, Lcom/android/camera/statistic/CameraTrackInfo;->getEvValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "attr_ev"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "attr_count"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v1

    const-string v3, "attr_ai_scene"

    if-nez v1, :cond_2

    if-eqz p6, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "off"

    .line 6
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_3
    :goto_2
    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v6

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v8

    iget-object v10, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getFlashAutoModeState()Ljava/lang/String;

    move-result-object v11

    move v3, p3

    move/from16 v4, p5

    move-object/from16 v9, p4

    .line 10
    invoke-static/range {v2 .. v11}, Lcom/android/camera/statistic/CameraStatUtils;->trackGeneralInfo(Ljava/util/Map;ZZIIZILcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera/MutexModeManager;Ljava/lang/String;)V

    return-void
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 0

    return-void
.end method

.method public trackPictureTaken(Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMacroModeTaken(I)V

    .line 3
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-wide v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->captureStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "attr_time_stamp"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v0

    const-string/jumbo v1, "off"

    const-string v3, "attr_ai_scene"

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "on"

    :cond_5
    const-string v0, "attr_picture_ration_movie"

    .line 11
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    const-string v3, "attr_beauty_level"

    if-ne v0, v1, :cond_9

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-eqz v0, :cond_7

    .line 15
    iget v0, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_7
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackIdPhoto(Ljava/util/Map;)V

    goto :goto_2

    .line 17
    :cond_8
    iget-boolean v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isEnteringMoon:Z

    invoke-static {v2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMoonMode(Ljava/util/Map;Z)V

    .line 18
    iget-boolean v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isSuperNightInCaptureMode:Z

    invoke-static {v2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperNightInCaptureMode(Ljava/util/Map;Z)V

    goto :goto_2

    :cond_9
    const/16 v1, 0xab

    if-ne v0, v1, :cond_b

    .line 19
    iget-object v0, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-eqz v0, :cond_a

    .line 20
    iget v0, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_a
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackCapturePortrait(Ljava/util/Map;)V

    goto :goto_2

    :cond_b
    const/16 v1, 0xad

    if-ne v0, v1, :cond_c

    .line 22
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackCaptureSuperNight(Ljava/util/Map;)V

    .line 23
    :cond_c
    :goto_2
    iget-boolean v3, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->burst:Z

    iget-object v4, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v5, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->takenNum:I

    iget-boolean v6, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isNearRangeMode:Z

    iget-wide v7, p1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->captureStartTime:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/module/BaseModule;->trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V

    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 0

    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 1

    const-string p0, "BaseModule"

    const-string/jumbo v0, "unRegisterModulePersist"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string v0, "BaseModule"

    const-string/jumbo v1, "unRegisterProtocol"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ZoomProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateAntiBanding(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedAntiBandingModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "antiBanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseModule"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setAntiBanding(I)V

    :cond_1
    return-void
.end method

.method public updateAutoHibernation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getAutoHibernationUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAutoHibernationOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setAutoHibernationSupported(Z)V

    return-void
.end method

.method public updateAutoHibernationFirstRecordingTime()V
    .locals 0

    return-void
.end method

.method public updateBackSoftLightPreference()V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateCameraScreenNailSize(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCameraScreenNailSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setPreviewSize(II)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0o;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOO0o;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 0

    return-void
.end method

.method public updateFocusAreaForAF(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "BaseModule"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "updateFocusAreaForAF: null camera device"

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->setSaliencyCheckerInfo([BI)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v4

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v5

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringOrFocusAreas(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigManager;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-static {v7}, Lcom/android/camera/module/loader/camera2/FocusTask;->create(I)Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object p2

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/Camera2Proxy;->startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    return-void

    :cond_4
    :goto_1
    const-string/jumbo p0, "updateFocusAreaForAF: isAlive false"

    .line 13
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLensDirtyDetect(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLensDirtyMgr:Lcom/android/camera/lensdirty/LensDirtyManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/camera/lensdirty/LensDirtyManager;->updateLensDirtyDetect(Lcom/android/camera/module/Module;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public updateModuleRelated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/Camera2Proxy;->setModuleParameter(II)V

    return-void
.end method

.method public final varargs updatePreferenceInWorkThread([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    const-string v1, "BaseModule"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "types:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->join([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "the mUpdateWorkThreadDisposable is not available."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final varargs updatePreferenceTrampoline([I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->consumePreference([I)V

    return-void
.end method

.method public updatePreviewSurface()V
    .locals 0

    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 0

    return-void
.end method

.method public updateScreenSlide(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 3
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xab

    if-eq p1, v1, :cond_1

    const/16 v1, 0xbc

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0xa

    aput v1, p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xa
        0x24
    .end array-data
.end method

.method public updateThermalLevel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateThermalLevel()V

    return-void
.end method

.method public updateTrackEye()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTrackEyeOn(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setTrackEyeEnable(Z)V

    return-void
.end method

.method public updateTrackFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isTrackFocusOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTrackFocusOn(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setTrackFocusEnable(Z)V

    return-void
.end method

.method public zoomIn(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->addZoom(F)Z

    return-void
.end method

.method public zoomOut(F)V
    .locals 0

    neg-float p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->addZoom(F)Z

    return-void
.end method

.method public zoomStateChanged(FF)Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 1
    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_3

    return v3

    .line 2
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    .line 4
    invoke-static {p0, v0, p2}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    :cond_4
    invoke-static {p0, v0, p2}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result p2

    if-nez p2, :cond_5

    .line 7
    invoke-static {p0, v0, p1}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :cond_6
    :goto_2
    return v2

    :cond_7
    return v3
.end method
