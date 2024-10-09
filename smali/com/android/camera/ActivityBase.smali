.class public abstract Lcom/android/camera/ActivityBase;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/AppController;
.implements Lcom/android/camera/module/loader/SurfaceStateListener;
.implements Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$SaveGaussian2File;,
        Lcom/android/camera/ActivityBase$ActivityHandler;
    }
.end annotation


# static fields
.field public static final MSG_APK_VERSION_EXCEPTION:I = 0xb

.field public static final MSG_CAMERA_OPEN_EXCEPTION:I = 0xa

.field public static final MSG_CHECK_AUTO_DOWNLOAD_FEATURE:I = 0x9

.field public static final MSG_DEBUG_INFO:I = 0x0

.field public static final MSG_GIVE_UP_RECOVER_FROM_CAMERA_ERROR:I = 0x7

.field public static final MSG_KEYGUARD_TWICE_RESUME:I = 0x1

.field public static final MSG_ON_THERMAL_CONTRAINT:I = 0x3

.field public static final MSG_REQUEST_THEME_CHANGE:I = 0x8

.field public static final MSG_REUPDATE_THERMAL:I = 0x6

.field public static final MSG_TRACK_MODE_SWITCH:I = 0x2

.field public static final RECOVER_TIMEOUT_MILLISECONDS:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "ActivityBase"


# instance fields
.field public volatile isResumeFirstDraw:Z

.field public volatile mActivityNewIntent:Z

.field public volatile mActivityPaused:Z

.field public volatile mActivityStarted:Z

.field public volatile mActivityStopped:Z

.field public mAppStartTime:J

.field public mApplication:Lcom/android/camera/CameraAppImpl;

.field public mBlurStartTime:J

.field public mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field public mCameraErrorShown:Z

.field public mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mCameraRootView:Lcom/android/camera/ui/CameraRootView;

.field public mCloseActivityThread:Ljava/lang/Thread;

.field public mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

.field public mCurrentModule:Lcom/android/camera/module/Module;

.field public mCurrentSurfaceState:I

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mDisplayRotation:I

.field public mErrorCameraId:Ljava/lang/String;

.field public mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

.field public mGLCoverView:Landroid/widget/ImageView;

.field public mGalleryLocked:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsFinishInKeyguard:Z

.field public mIsNewCTAShowing:Z

.field public mIsRecoveringFromCameraError:Z

.field public mIsSwitchingModule:Z

.field public mJumpFlag:I

.field public mJumpedToGallery:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mKeyguardSecureLocked:Z

.field public mLastJumpFlag:I

.field public mModeSelectGaussianTime:J

.field public mModeSwitchTime:J

.field public mOrientation:I

.field public mOrientationCompensation:I

.field public mPreviewThumbnail:Z

.field public mReleaseByModule:Z

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mRequestDismissKeyguarding:Z

.field public mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field public mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

.field public mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field public mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

.field public mStartFromKeyguard:Z

.field public mSurfaceView:Landroid/view/SurfaceView;

.field public mTTSHelper:Lcom/android/camera/tts/TTSHelper;

.field public mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 7
    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 8
    iput v0, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    .line 11
    new-instance v1, Lcom/android/camera/ActivityBase$ActivityHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$ActivityHandler;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    .line 13
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->isResumeFirstDraw:Z

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    .line 16
    new-instance v0, Lcom/android/camera/ActivityBase$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$5;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->giveUpRecoverFromCameraError()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/ActivityBase;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->showCoverView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->dismissCoverView()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ActivityBase;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ActivityBase;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    return-object p0
.end method

.method private addSecureUriIfNecessary(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static bypassUriValidation(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dismissCoverView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isBackLightSensor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOooo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xc8

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const-string p0, "ActivityBase"

    const-string v0, "dismissCoverView"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getSecureStoreIds()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-array p0, v1, [J

    return-object p0
.end method

.method private giveUpRecoverFromCameraError()V
    .locals 3

    const-string v0, "ActivityBase"

    const-string v1, "giveUpRecoverFromCameraError"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "giveUpRecoverFromCameraError: finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private initForKeyGuard()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 5
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    const-string v0, "ActivityBase"

    const-string/jumbo v1, "onCreate: addFlag --> FLAG_TURN_SCREEN_ON"

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_6
    return-void
.end method

.method private moduleDisableBlur()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xcc

    if-ne p0, v2, :cond_0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xbd

    if-ne p0, v2, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private registerAvailabilityCallback()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private showCoverView(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBlurView display rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityBase"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooO00o;

    invoke-direct {v1, p0, v0, p1}, LOooO0O0/OooO0O0/OooO00o/OooO00o;-><init>(Lcom/android/camera/ActivityBase;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterAvailabilityCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public checkFeatureAutoDownload()V
    .locals 0

    return-void
.end method

.method public checkGalleryLock()V
    .locals 2

    const-string v0, "com.miui.gallery"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGalleryLock: galleryLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityBase"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkKeyguardFlag()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/high16 v3, 0x80000

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const-string v1, "ActivityBase"

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isKnockLaunchSource()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "checkKeyguard: setShowWhenLocked:false"

    .line 12
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setStartFromKeyguard(Z)V

    .line 16
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 20
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKeyguard: fromKeyguard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " keyguardSecureLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " secureUriList is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    const-string/jumbo p0, "null"

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not null ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkSupportLandscape()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearNotification()V
    .locals 1

    const-string/jumbo v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method public couldShowErrorDialog()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract create2OpenCamera(Landroid/os/Bundle;)V
.end method

.method public createActivity(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 2
    new-instance p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-direct {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->initForKeyGuard()V

    .line 4
    new-instance p1, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/RenderEngineAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-void
.end method

.method public destroyActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/tts/TTSHelper;->cleanup()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    return-void
.end method

.method public dismissBlurCover()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->needKeepCoverView()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v3, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    .line 8
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    goto :goto_0

    .line 9
    :cond_2
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public enableThumbnail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object p0
.end method

.method public getCameraBrightness()Lcom/android/camera/CameraBrightness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/CameraBrightness;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    return-object p0
.end method

.method public getCameraIntentManager()Lcom/android/camera/CameraIntentManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public getKeyguardFlag()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result p0

    return p0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    return p0
.end method

.method public getOrientationCompensation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    return p0
.end method

.method public getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-object p0
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object p0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSetupWizard()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTTSHelper()Lcom/android/camera/tts/TTSHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/tts/TTSHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/tts/TTSHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    return-object p0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v0, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object p0
.end method

.method public gotoGallery()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before gotoGallery mActivity is Paused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    const-string v2, "com.miui.gallery"

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v2, "gotoGallery: thumbnail uri is not ready"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isWaitingForUri()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gotoGallery: checking thumbnail uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getLastUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    invoke-static {v3}, Lcom/android/camera/ActivityBase;->bypassUriValidation(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoGallery: invalid thumbnail uri: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isWaitingForUri()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_2
    return-void

    .line 15
    :cond_3
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gotoGallery: thumbnail uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v5
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "com.android.camera.action.REVIEW"

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 18
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "com.google.android.apps.photos"

    .line 19
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 20
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.miui.camera.action.REVIEW"

    invoke-direct {v5, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.SPILIT_SCREEN_REVIEW"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v6, 0x10009000

    .line 23
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v5, "gotoGallery: com.android.camera.action.REVIEW"

    .line 24
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    :goto_0
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "from_MiuiCamera"

    .line 27
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraBrightness()Lcom/android/camera/CameraBrightness;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessAuto()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_6

    const-string v6, "camera-brightness-auto"

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraBrightness()Lcom/android/camera/CameraBrightness;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessAuto()F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_2

    .line 31
    :cond_6
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraBrightness()Lcom/android/camera/CameraBrightness;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/android/camera/CameraBrightness;->setBrightness(I)V

    :cond_7
    const-string v6, "camera-brightness-manual"

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraBrightness()Lcom/android/camera/CameraBrightness;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessManual()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "camera-brightness"

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraBrightness()Lcom/android/camera/CameraBrightness;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 36
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "com.google.android.apps.photos.api.secure_mode"

    .line 37
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 38
    :cond_9
    invoke-static {v5, v7}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 39
    :cond_a
    :goto_3
    invoke-static {p0, v2}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "skip_interception"

    .line 40
    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    :cond_b
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isGif()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 42
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result v2

    const/16 v6, 0x12c

    if-gtz v2, :cond_c

    move v2, v6

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result v2

    .line 43
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gotoGallery: gifWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result v6

    .line 45
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gotoGallery: gifHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "photo_width"

    .line 46
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "photo_height"

    .line 47
    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "photo_mime_type"

    const-string v6, "image/gif"

    .line 48
    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_e
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 50
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 51
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->getSecureStoreIds()[J

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_6

    :cond_f
    const-string v2, "SecureUri"

    .line 52
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 53
    :cond_10
    :goto_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "using_deputy_screen"

    .line 54
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    const-string v2, "extra_file_length"

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v5, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gotoGallery: fileSize = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "device_orientation"

    .line 57
    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iput v7, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 60
    iput-boolean v7, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 61
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 63
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoGallery(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string/jumbo v2, "review activity not found!"

    .line 65
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "review image fail. uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 68
    :cond_13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-nez v0, :cond_14

    .line 69
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    const-string p0, "gotoGallery: no gallery"

    .line 73
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_7
    return-void
.end method

.method public handleCameraError(I)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "handleCameraError: recovering = %b, paused = %b"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x7

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized hasSurface()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    goto :goto_0

    :cond_1
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_OK mRenderEngine is null"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    const/4 v0, 0x1

    .line 7
    monitor-exit p0

    return v0

    .line 8
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooO0O0;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    goto :goto_1

    :cond_5
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_PAUSED mRenderEngine is null"

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActivityNewIntent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    return p0
.end method

.method public isActivityPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return p0
.end method

.method public isActivityStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    return p0
.end method

.method public isActivityStopped()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    return p0
.end method

.method public isCameraAliveWhenResume()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 3
    iget-object v3, v3, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 6
    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    iget-boolean v5, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    .line 8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "isCameraAliveWhenResume: mRealeaseByModule: %b, isModuleAlive: %b, isCameraDevicesAlive: %b"

    .line 9
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityBase"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-nez p0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public isGalleryLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return p0
.end method

.method public isGotoGallery()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGotoLiveMusic()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGotoSettings()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGotoWorkspace()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIsNewCTAShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mIsNewCTAShowing:Z

    return p0
.end method

.method public isJumpBack()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKnockLaunchSource()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isKnockLaunchSource()Z

    move-result p0

    return p0
.end method

.method public isPostProcessing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isPostProcessing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowBottomIntentDone()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->isShowing()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSwitchingModule()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return p0
.end method

.method public abstract notifyOnFirstFrameArrived(I)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const p2, 0x8c35

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->addSecureUriIfNecessary(Landroid/net/Uri;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_2

    .line 5
    instance-of p1, p0, Lcom/android/camera/features/mode/doc/DocModule;

    if-eqz p1, :cond_1

    .line 6
    check-cast p0, Lcom/android/camera/features/mode/doc/DocModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mode/doc/DocModule;->forDocResult()V

    goto :goto_0

    .line 7
    :cond_1
    instance-of p1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;

    if-eqz p1, :cond_2

    .line 8
    check-cast p0, Lcom/android/camera/features/mode/idcard/IdCardModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->forIDCardResult()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigThemeRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/display/device/ScreenOrientationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->create2OpenCamera(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->setTheme(Landroid/app/Activity;)V

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isContentViewExtendToTopEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-ge v0, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    new-instance v0, Lcom/android/camera/display/device/ScreenOrientationManager;

    invoke-direct {v0, p0}, Lcom/android/camera/display/device/ScreenOrientationManager;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    .line 10
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->createActivity(Landroid/os/Bundle;)V

    const-string/jumbo p0, "onCreate -"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->destroyActivity()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/performance/PerformanceManager;->setPerformanceListener(Lcom/android/camera/performance/PerformanceManager$PerformanceListener;)V

    const-string/jumbo p0, "onDestroy -"

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameAvailable(I)V
    .locals 11

    const/4 v0, 0x1

    const-string v1, "ActivityBase"

    const-wide/16 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 1
    iget-wide v4, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    sub-long/2addr v4, v6

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    sget-object v9, Lcom/android/camera/performance/Action$Event;->COLD_LAUNCH:Lcom/android/camera/performance/Action$Event;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/android/camera/performance/Action$Event;->HOT_LAUNCH:Lcom/android/camera/performance/Action$Event;

    aput-object v9, v8, v0

    invoke-virtual {v6, v8}, Lcom/android/camera/performance/PerformanceManager;->resetActionInfo([Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v6

    new-array v7, v7, [Lcom/android/camera/performance/Action$Event;

    sget-object v8, Lcom/android/camera/performance/Action$Event;->COLD_LAUNCH:Lcom/android/camera/performance/Action$Event;

    aput-object v8, v7, v10

    sget-object v8, Lcom/android/camera/performance/Action$Event;->HOT_LAUNCH:Lcom/android/camera/performance/Action$Event;

    aput-object v8, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/camera/performance/PerformanceManager;->stopEvent([Lcom/android/camera/performance/Action$Event;)J

    .line 5
    invoke-static {v4, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackStartAppCost(J)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackStartAppCost: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", start time: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", now: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    iput-wide v2, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    goto :goto_1

    .line 13
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->getCameraSwitchStart()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 15
    iget-wide v6, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    sub-long v6, v4, v6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFrameAvailable: trackModeSwitchCost: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v4, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackSwitchModeCost(J)V

    .line 18
    iput-wide v2, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    .line 19
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->getCameraSwitchStart()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 21
    invoke-static {v4, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackSwitchCameraCost(J)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackCameraSwitchCost: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->getCameraSwitchStart()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->setCameraSwitchStart(J)V

    .line 24
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->notifyOnFirstFrameArrived(I)V

    return-void
.end method

.method public onFrameDrawn()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->isResumeFirstDraw:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->isResumeFirstDraw:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xc8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->setCameraPreviewRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->addSecureUriIfNecessary(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->isResumeFirstDraw:Z

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onPause frontCUPLens showBlurCover"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showBlurCover()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->pauseActivity()V

    .line 7
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string/jumbo p0, "onPause -"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V
    .locals 0

    return-void
.end method

.method public final onRestart()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestart +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->restartActivity()V

    const-string/jumbo p0, "onRestart -"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->isResumeFirstDraw:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resume2OpenCamera()V

    .line 4
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resumeActivity()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isCameraAliveWhenResume()Z

    move-result v0

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume cameraAliveWhenResume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mGLCoverView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "onResume frontCUPLens dismissBlurCover"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooO0OO;-><init>(Lcom/android/camera/ActivityBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    const-string/jumbo p0, "onResume -"

    .line 14
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startBoost()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startActivity()V

    const-string/jumbo p0, "onStart -"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->stopActivity()V

    .line 3
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    const-string/jumbo p0, "onStop -"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0

    return-void
.end method

.method public final openSettingActivity()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const-string v2, "from_where"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusHintShow()Z

    move-result v1

    const-string/jumbo v2, "scroll_to"

    const-string v3, "ActivityBase"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "openSettingActivity: SCROLL_TO_TRACK_FOCUS"

    .line 5
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->INTENT_VALUE_SCROLL_TO_TRACK_FOCUS:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "openSettingActivity: SCROLL_TO_TRUE_COLOUR"

    .line 8
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->INTENT_VALUE_SCROLL_TO_TRUE_COLOUR:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10
    :cond_1
    :goto_0
    const-class v1, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoSettings(I)V

    :cond_3
    return-void
.end method

.method public pauseActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onPause()V

    :cond_0
    return-void
.end method

.method public recoverFromCameraError()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public releaseSnapshotRender()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    sget-object v1, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseSnapshotRender: mListenerMapSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFlightPictureListenerArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityBase"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getInstance()Lcom/android/camera/effect/renders/SnapshotRenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->releaseSnapshotRender()V

    .line 9
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->releaseProcess()V

    :cond_2
    return-void
.end method

.method public requestChangeWCGConfig()V
    .locals 0

    return-void
.end method

.method public restartActivity()V
    .locals 0

    return-void
.end method

.method public final restartModule(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public abstract resume2OpenCamera()V
.end method

.method public resumeActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onResume()V

    :cond_0
    return-void
.end method

.method public setErrorDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewThumbnail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOrientationManager:Lcom/android/camera/display/device/ScreenOrientationManager;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/display/device/ScreenOrientationManager;->enableRequestedOrientation(Landroid/app/Activity;Z)V

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setSwitchingModule(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return-void
.end method

.method public showBlurCover()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isShowBottomIntentDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isCameraAliveWhenResume()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isPostProcessing()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    return-void

    .line 5
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->moduleDisableBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOooo()Z

    move-result v0

    const-string v2, "ActivityBase"

    if-nez v0, :cond_8

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v4, :cond_6

    const/4 v3, 0x4

    .line 9
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/RenderEngineAdapter;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    :cond_6
    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v0, "showBlurCover: blur bitmap from memory!"

    .line 11
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v3}, Lcom/android/camera/ActivityBase;->showCoverView(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 13
    :cond_7
    new-instance v2, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 14
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;J)V

    .line 16
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 17
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x1000000

    goto :goto_1

    :cond_9
    const/high16 v3, 0x7f000000

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_a
    const-string/jumbo v0, "showBlurCover black for K8 front"

    .line 28
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_b
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    return-void
.end method

.method public startActivity()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->initCameraThermal()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->registerAvailabilityCallback()V

    return-void
.end method

.method public startBoost()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p0

    const/16 v0, 0x1f4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    return-void
.end method

.method public startFromKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return p0
.end method

.method public startFromSecureKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return p0
.end method

.method public stopActivity()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraThermal()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoLiveMusic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoWorkspace()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onPause()V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->unregisterAvailabilityCallback()V

    return-void
.end method

.method public stopBoost()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    return-void
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ActivityBase"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateThermal(I)V
    .locals 0

    return-void
.end method
