.class public Lcom/android/camera/module/loader/camera2/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;,
        Lcom/android/camera/module/loader/camera2/FocusManager$Listener;
    }
.end annotation


# static fields
.field public static final FOCUS_TIMEOUT_DELAY:I = 0x7d0

.field public static final FOCUS_TIME_OUT:I = 0xfa0

.field public static final FORCE_RESET_TOUCH_FOCUS:I = 0x1

.field public static FORCE_RESET_TOUCH_FOCUS_DELAY:I = 0x1388

.field public static final MAX_FACE_MOVE:I = 0x50

.field public static final MSG_DELAY_FOCUS_SOUND:I = 0x2

.field public static final MSG_FOCUS_TIMEOUT:I = 0x3

.field public static final NEED_RESET_FOCUS_MODE:I = 0x1

.field public static final RESET_TOUCH_FOCUS:I = 0x0

.field public static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "FocusManager"

.field public static final TAP_ACTION_AE:I = 0x1

.field public static final TAP_ACTION_AE_AND_AF:I = 0x2


# instance fields
.field public mAELockOnlySupported:Z

.field public mAeAwbLock:Z

.field public mCafStartTime:J

.field public mCameraFocusArea:Landroid/graphics/Rect;

.field public mCameraMeteringArea:Landroid/graphics/Rect;

.field public mChangeAe:Z

.field public mDestroyed:Z

.field public mFocusAreaSupported:Z

.field public mFocusFrom:I

.field public mFocusMode:Ljava/lang/String;

.field public mFocusPoint:Landroid/graphics/Point;

.field public mFocusResultConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/module/loader/camera2/FocusTask;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

.field public mFocusResultEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/module/loader/camera2/FocusTask;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mIsSupportAFSaliency:Z

.field public mKeepFocusUIState:Z

.field public mLastFocusFrom:I

.field public mLastState:I

.field public mLatestFocusFace:Landroid/graphics/RectF;

.field public mLatestFocusTime:J

.field public mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/loader/camera2/FocusManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mLockAeAwbNeeded:Z

.field public mMeteringAreaSupported:Z

.field public mMeteringPoint:Landroid/graphics/Point;

.field public mPendingMultiCapture:Z

.field public mPendingTouchPreviewCapture:Z

.field public mPreviewPixels:[B

.field public mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

.field public mScreenNailHeight:I

.field public mScreenNailWidth:I

.field public mSupportedFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWithFlash:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/module/loader/camera2/FocusManager$Listener;ZLandroid/os/Looper;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastState:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    .line 5
    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/FocusManager$2;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultConsumer:Lio/reactivex/functions/Consumer;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraTouchFocusDelayEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    .line 7
    sput v0, Lcom/android/camera/module/loader/camera2/FocusManager;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    .line 8
    :cond_0
    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManagerAbstract;->setMirror(Z)V

    .line 12
    iput-boolean p5, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mIsSupportAFSaliency:Z

    .line 13
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusPoint:Landroid/graphics/Point;

    .line 14
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringPoint:Landroid/graphics/Point;

    .line 15
    new-instance p1, Lcom/android/camera/module/loader/camera2/FocusManager$1;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/FocusManager$1;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/loader/camera2/FocusManager;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->multiCapture()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->capture()V

    return-void
.end method

.method public static synthetic access$1402(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/loader/camera2/FocusManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mDestroyed:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    return p0
.end method

.method public static synthetic access$2102(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$2200(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/loader/camera2/FocusManager;Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onAutoFocusMoving(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/module/loader/camera2/FocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/loader/camera2/FocusManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingTouchPreviewCapture:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingTouchPreviewCapture:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/FocusManager;->afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/Util;->createMeteringRectangleFrom(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, p2, p1

    return-object p2
.end method

.method private afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 8
    iget p3, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, p0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    add-float/2addr p3, v2

    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 9
    iget p3, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    add-float/2addr p3, v3

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 10
    iget p3, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p3, p0

    int-to-float p0, v1

    add-float/2addr p3, p0

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 11
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p1

    int-to-float p1, v2

    add-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    .line 12
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    invoke-static {v0, p0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 14
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p3, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 15
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p3, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 16
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p3, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 17
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p3, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "testRect:"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private capture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->onWaitingFocusFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->onWaitingFocusFinishedFailed()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    .line 3
    iput-boolean p4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mChangeAe:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus(Z)V

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeParameters(IIIZ)V

    const/4 p4, 0x1

    .line 7
    invoke-direct {p0, p4, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusIndicator(III)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mIsSupportAFSaliency:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, p4

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1, v1}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_3
    if-eqz p1, :cond_4

    if-nez v1, :cond_5

    :cond_4
    const-string p1, "FocusManager"

    const-string/jumbo p2, "not isAFSaliencyCheck, focusPointAfter"

    .line 12
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->focusPointAfter()V

    :cond_5
    :goto_0
    return-void
.end method

.method private getFocusTimeout()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mWithFlash:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget p0, Lcom/android/camera/module/loader/camera2/FocusManager;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    return p0

    :cond_0
    const/16 p0, 0x7d0

    return p0
.end method

.method private getTapAction()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "edof"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 10

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusPoint:Landroid/graphics/Point;

    move v4, p3

    iput v4, v0, Landroid/graphics/Point;->x:I

    move v5, p4

    .line 4
    iput v5, v0, Landroid/graphics/Point;->y:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    iget-object v8, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeFocusAreas mCameraFocusArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeFocusIndicator(III)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewPosition(III)V

    :cond_0
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10

    move-object v9, p0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    const/4 v1, 0x1

    move/from16 v2, p7

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isNeedExposure(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    return-void

    .line 4
    :cond_0
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    .line 6
    :cond_1
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringPoint:Landroid/graphics/Point;

    move v4, p3

    iput v4, v0, Landroid/graphics/Point;->x:I

    move v5, p4

    .line 7
    iput v5, v0, Landroid/graphics/Point;->y:I

    const v3, 0x3fe66666    # 1.8f

    .line 8
    iget-object v8, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeMeteringAreas mCameraMeteringArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeParameters(IIIZ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeParameters default focus area w*h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringPoint:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iput p2, v1, Landroid/graphics/Point;->y:I

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 6
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 7
    :cond_1
    iget-boolean p4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringAreaSupported:Z

    if-eqz p4, :cond_2

    .line 8
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeMeteringAreas(IIIIIII)V

    :cond_2
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "auto"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "macro"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private isFocusEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFocusValid(I)Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1388

    :goto_1
    const/4 v6, 0x1

    if-ge p1, v3, :cond_4

    .line 3
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    if-ge p1, v2, :cond_4

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusTime:J

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    if-ne p1, v6, :cond_3

    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetTouchFocus(I)V

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 7
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusTime:J

    return v6
.end method

.method private isMeteringFocusSplit()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusPoint:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_0
    return-void
.end method

.method private multiCapture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getTapAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAutoFocusMoving(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const-string v3, "FocusManager"

    if-nez v2, :cond_0

    const-string/jumbo p0, "onAutoFocusMoving"

    .line 4
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->showFocusViewWhenCaf()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v6

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v5

    :goto_1
    const/4 v4, 0x3

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v7

    invoke-interface {v2, v7}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    move p1, v5

    .line 10
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAutoFocusMoving: mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " show="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v7, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v7, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "auto"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 12
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    :cond_5
    const/4 v7, 0x2

    if-eqz v0, :cond_7

    .line 13
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, v7, :cond_6

    .line 14
    invoke-direct {p0, v6}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusTimeout()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    const-string v0, "Camera KPI: CAF start"

    .line 20
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCafStartTime:J

    if-eqz p1, :cond_c

    if-eqz v2, :cond_c

    .line 22
    sget p0, Lcom/android/camera/module/loader/camera2/FocusManager;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    invoke-interface {v2, v7, v6, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->showIndicator(III)V

    .line 23
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvAdjustVisible(Z)V

    goto :goto_4

    .line 24
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCafStartTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    .line 26
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 27
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x4

    .line 28
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 29
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    .line 30
    :goto_2
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_a

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    move p1, v7

    goto :goto_3

    :cond_9
    move p1, v4

    :goto_3
    const/4 v1, -0x1

    .line 33
    invoke-interface {v2, v7, p1, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->showIndicator(III)V

    :cond_a
    if-ne v0, v7, :cond_c

    .line 34
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 35
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    if-eqz p1, :cond_b

    .line 36
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->multiCapture()V

    goto :goto_4

    .line 37
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->capture()V

    :cond_c
    :goto_4
    return-void
.end method

.method private onlyAe()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getTapAction()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processSaliencyChecker(Landroid/graphics/Rect;)V
    .locals 12

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    int-to-double v1, v1

    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processSaliencyChecker ratio = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "FocusManager"

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processSaliencyChecker before: (left="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", top="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height="

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p0, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;

    invoke-direct {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;-><init>()V

    .line 6
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-double v8, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setLeft(I)V

    .line 7
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-double v8, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setTop(I)V

    .line 8
    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setWidth(I)V

    .line 9
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setHeight(I)V

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processSaliencyChecker before ratio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v8, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    invoke-direct {v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;-><init>()V

    const/4 v9, 0x1

    .line 12
    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgFormat(I)V

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getImgWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgWidth(I)V

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getImgHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgHeight(I)V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getImgWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgStride(I)V

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getOrientation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setOrientation(I)V

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getBufferSize()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setBufferSize(J)V

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getBufferData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setBufferData([B)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setLeft(I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setTop(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setHeight(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setWidth(I)V

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSaliencyChecker input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v9, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;

    invoke-direct {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getBufferSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->setBufferSize(J)V

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->getBufferData()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->setBufferData([B)V

    .line 27
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/android/camera/saliencychecker/SaliencyChecker;->process(Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;)Z

    move-result v0

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSaliencyChecker output: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->getLeft()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    invoke-virtual {p0, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setLeft(I)V

    .line 30
    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->getTop()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    invoke-virtual {p0, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setTop(I)V

    .line 31
    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->getWidth()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    invoke-virtual {p0, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setWidth(I)V

    .line 32
    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/data/SaliencyProcessOutputObject;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->setHeight(I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processSaliencyChecker after ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessRect;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "processSaliencyChecker after: (left="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v3, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v4, v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 2
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusIndicator(III)V

    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v6, v1

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v7, v1

    .line 7
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v8, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v9, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusAreas(IIIIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setFocusState(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastState:I

    return-void
.end method

.method private startFocus(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "auto"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    .line 4
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->startFocus()V

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateTrackFocusArea(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager;->afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public canRecord()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public cancelFocus()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus(Z)V

    return-void
.end method

.method public cancelFocus(Z)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFocus: E, resetFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetTouchFocus(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelFocus: needAutoFocusCall()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2, v4}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->notifyFocusAreaUpdate(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2, p1}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->cancelFocus(Z)V

    .line 10
    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, p1, :cond_3

    .line 11
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "waiting focus timeout!"

    .line 12
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 14
    iput-boolean v4, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "cancelFocus: X"

    .line 18
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelLongPressedAutoFocus()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public cancelMultiSnapPending()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mDestroyed:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0o()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->destroy()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public doMultiSnap(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->multiCapture()V

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingMultiCapture:Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->multiCapture()V

    goto :goto_1

    .line 8
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->multiCapture()V

    :cond_5
    :goto_1
    return-void
.end method

.method public doSnap(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "doSnap mState = %d, fromWhat = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v5, "FocusManager"

    invoke-static {v2, v5, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    move v3, v4

    .line 3
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mPendingTouchPreviewCapture:Z

    if-eqz v3, :cond_2

    return-void

    .line 4
    :cond_2
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne p1, v4, :cond_5

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->shouldCaptureDirectly()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->capture()V

    goto :goto_1

    .line 9
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_7

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->capture()V

    goto :goto_1

    .line 11
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->capture()V

    :cond_7
    :goto_1
    return-void
.end method

.method public focusFaceArea()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    if-ne v4, v3, :cond_3

    .line 7
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    return v2

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 11
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    div-float/2addr v5, v4

    float-to-int v0, v5

    .line 12
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->focusPoint(IIIZ)V

    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method public focusPointAfter()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAELockOnlySupported:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mChangeAe:Z

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    .line 3
    :cond_2
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->startFocus(I)V

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    .line 6
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    const/4 v3, 0x3

    if-ne v3, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 8
    :cond_4
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusFrom:I

    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    .line 9
    iget-boolean v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAELockOnlySupported:Z

    if-eqz v4, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->startFocus(I)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 13
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 15
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    return p0
.end method

.method public getCurrentFocusState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public getFocusAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mIsSupportAFSaliency:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->processSaliencyChecker(Landroid/graphics/Rect;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    return-object p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getLastFocusState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastState:I

    return p0
.end method

.method public getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    return-object p0
.end method

.method public getMeteringOrFocusAreas(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 11

    move-object v9, p0

    move v4, p1

    move v5, p2

    if-eqz p5, :cond_0

    .line 1
    iget v0, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 2
    iget v1, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    iget-object v3, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusPoint:Landroid/graphics/Point;

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 4
    iput v5, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 6
    iget v1, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const v2, 0x3fe66666    # 1.8f

    .line 7
    iget-object v3, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringPoint:Landroid/graphics/Point;

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 8
    iput v5, v3, Landroid/graphics/Point;->y:I

    :goto_0
    move v3, v2

    move v2, v1

    move v1, v0

    .line 9
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget v6, v9, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, v9, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    if-eqz p5, :cond_1

    .line 11
    iget-boolean v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager;->mIsSupportAFSaliency:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0, v10}, Lcom/android/camera/module/loader/camera2/FocusManager;->processSaliencyChecker(Landroid/graphics/Rect;)V

    :cond_1
    move-object v0, p3

    move-object v1, p4

    .line 13
    invoke-direct {p0, v10, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public initSaliencyChecker(II)V
    .locals 4

    if-le p1, p2, :cond_0

    .line 1
    iput p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    .line 2
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailHeight:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailHeight:I

    .line 5
    :goto_0
    new-instance p1, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;

    invoke-direct {p1}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;-><init>()V

    .line 6
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    int-to-double v0, p2

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setRatio(D)V

    .line 8
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setImgWidth(I)V

    .line 9
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailHeight:I

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setImgHeight(I)V

    .line 10
    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    int-to-double v2, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 11
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    int-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setDefaultBoxHeight(I)V

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setDefaultBoxWidth(I)V

    const-string p0, "/vendor/etc/camera"

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setAssetPath(Ljava/lang/String;)V

    const-string p0, "/vendor/lib/rfsa/adsp/"

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;->setAdspPath(Ljava/lang/String;)V

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initSaliencyChecker: saliencyInitInputObject = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FocusManager"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->init(Lcom/android/camera/saliencychecker/data/SaliencyInitInputObject;)Z

    return-void
.end method

.method public isFocusCompleted()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public isFocusing()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromTouch()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedCancelAutoFocus()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public onCameraReleased()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->onPreviewStopped()V

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isMeteringFocusSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz p1, :cond_0

    const-string p1, "FocusManager"

    const-string/jumbo v0, "onDeviceKeepMoving"

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method public onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetTouchFocus(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSingleTapUp isLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->onlyAe()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->focusPoint(IIIZ)V

    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_3

    const-string v5, "auto"

    .line 3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "macro"

    .line 4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    :cond_1
    iget v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastState:I

    if-eq v5, v1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    .line 6
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareCapture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "FocusManager"

    invoke-static {v2, v6, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const-string p2, "continuous-picture"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    if-eqz v5, :cond_6

    .line 9
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->focusFaceArea()Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusAreaToCenter()V

    .line 14
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->startFocus(I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 16
    iput-boolean v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mKeepFocusUIState:Z

    .line 17
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->startFocus(I)V

    .line 18
    iput-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mKeepFocusUIState:Z

    :goto_1
    move v3, v4

    :cond_6
    if-nez v3, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0oo()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne p1, v4, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus()V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->requestAutoFocus()V

    :cond_8
    :goto_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestAutoFocus()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3, v5}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->cancelFocus(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    .line 7
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 8
    iput-boolean v5, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    :cond_4
    move v2, v4

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusAreaToCenter()V

    .line 15
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->notifyFocusAreaUpdate(Z)V

    .line 18
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->startFocus(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public resetAfterCapture(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/android/camera/module/loader/camera2/FocusManager$Listener;->cancelFocus(Z)V

    :cond_0
    const/4 p1, 0x7

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetTouchFocus(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetFocusIndicator(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    return-void
.end method

.method public resetFocusState(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetFocusState resetFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isMeteringFocusSplit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setLastFocusState(I)V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public resetFocused()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public resetTouchFocus(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mCameraMeteringArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusIndicator(I)V

    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V
    .locals 4

    const-string v0, "FocusManager"

    if-nez p1, :cond_0

    const-string/jumbo p0, "setCharacteristics got null CameraCapabilities!"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAERegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringAreaSupported:Z

    .line 4
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAELockSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAWBLockSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLockAeAwbNeeded:Z

    .line 5
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/constant/AutoFocus;->convertToLegacyFocusModes([I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSupportedFocusModes:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mActiveArraySize:Landroid/graphics/Rect;

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAELockSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAELockOnlySupported:Z

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCharacteristics: mFocusAreaSupported = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusAreaSupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAELockOnlySupported = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAELockOnlySupported:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "FocusManager"

    const-string/jumbo v1, "setFocusMode: null focus mode"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :cond_0
    const-string v0, "auto"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSupportedFocusModes:Ljava/util/List;

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v0, "continuous-video"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public setIsSupportAFSaliency(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mIsSupportAFSaliency:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    .line 3
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPreviewSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method

.method public setSaliencyCheckerInfo([BI)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    invoke-direct {v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    invoke-virtual {v0, p1}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setBufferData([B)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setBufferSize(J)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    invoke-virtual {p1, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgWidth(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailHeight:I

    invoke-virtual {p1, v0}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setImgHeight(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/data/SaliencyProcessInputObject;->setOrientation(I)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSaliencyCheckerInfo pictureSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mScreenNailHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", orientation="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWithFlash(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mWithFlash:Z

    return-void
.end method

.method public updateFocusUI()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mKeepFocusUIState:Z

    if-nez v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    .line 6
    :goto_0
    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v4, :cond_8

    const/4 v6, -0x1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v3, 0x4

    if-eq v5, v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v5, "continuous-picture"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v3, "continuous-video"

    .line 8
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v7

    .line 9
    :cond_4
    :goto_1
    invoke-interface {v0, v2, v4, v6}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->showIndicator(III)V

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_b

    if-eqz v1, :cond_b

    const p0, 0x7f1200c7

    .line 11
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->announceForAccessibility(I)V

    goto :goto_3

    .line 12
    :cond_5
    invoke-interface {v0, v2, v4, v6}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->showIndicator(III)V

    .line 13
    iget-boolean v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->performHapticFeedback(I)V

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;->setFocusViewToastVisible(Z)V

    .line 16
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 17
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager;->mAeAwbLock:Z

    if-eqz p0, :cond_7

    const p0, 0x7f120083

    goto :goto_2

    :cond_7
    const p0, 0x7f1200c8

    :goto_2
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->announceForAccessibility(I)V

    goto :goto_3

    .line 18
    :cond_8
    sget p0, Lcom/android/camera/module/loader/camera2/FocusManager;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    invoke-interface {v0, v2, v3, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->showIndicator(III)V

    goto :goto_3

    :cond_9
    if-ne v2, v4, :cond_a

    const/4 p0, 0x7

    .line 19
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_3

    .line 20
    :cond_a
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearIndicator(I)V

    :cond_b
    :goto_3
    return-void
.end method
