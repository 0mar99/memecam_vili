.class public Lcom/android/camera/display/device/FoldState;
.super Ljava/lang/Object;
.source "FoldState.java"

# interfaces
.implements Lcom/android/camera/display/device/IFoldState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/display/device/FoldState$IDeviceStateManager;,
        Lcom/android/camera/display/device/FoldState$RequestCallbackHandler;,
        Lcom/android/camera/display/device/FoldState$DeviceStateCallbackHandler;,
        Lcom/android/camera/display/device/FoldState$State;
    }
.end annotation


# static fields
.field public static final CONTROL_DEVICE_STATE:Ljava/lang/String; = "android.permission.CONTROL_DEVICE_STATE"

.field public static final DEVICE_STATE_SERVICE:Ljava/lang/String; = "device_state"

.field public static final DSM_CB_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateManager$DeviceStateCallback"

.field public static final DSM_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateManager"

.field public static final DSM_FSLCB_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateManager$FoldStateListener"

.field public static final DSN_PGK_NAME:Ljava/lang/String; = "android.hardware.devicestate"

.field public static final DSS_BUILDER_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateRequest$Builder"

.field public static final DSS_CB_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateRequest$Callback"

.field public static final DSS_CLASS_NAME:Ljava/lang/String; = "android.hardware.devicestate.DeviceStateRequest"

.field public static final FLAG_CANCEL_WHEN_BASE_CHANGES:I = 0x1

.field public static final FOLD_STATE_SETTINGS_KEY:Ljava/lang/String; = "device_posture"

.field public static final STATE_FLAT_BOTH:I = 0x3

.field public static final STATE_FLAT_BOTH_REVERSE:I = 0x4

.field public static final STATE_FLAT_NORMAL:I = 0x1

.field public static final STATE_FLAT_OUT:I = 0x2

.field public static final STATE_FOLD_NORMAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FoldState"


# instance fields
.field public mDeviceStateCallback:Ljava/lang/Object;

.field public mFoldStateListener:Ljava/lang/Object;

.field public mInitialized:Z

.field public mIsFold:Z

.field public mLastRequest:Ljava/lang/Object;

.field public mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/display/device/IFoldState$OnFoldedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/display/device/FoldState;->mInitialized:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FoldState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceStateRequest(II)Ljava/lang/Object;
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.hardware.devicestate.DeviceStateRequest"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "newBuilder"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android.hardware.devicestate.DeviceStateRequest$Builder"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "setFlags"

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "build"

    new-array v1, v5, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private getFoldStateListener(Landroid/content/Context;Ljava/util/function/Consumer;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    const-string p0, "android.hardware.devicestate.DeviceStateManager$FoldStateListener"

    .line 1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/function/Consumer;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDisplayFoldState()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean p0, p0, Lcom/android/camera/display/device/FoldState;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->getCurrentState()I

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "device_posture"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    .line 4
    sget-object v2, Lcom/android/camera/display/device/FoldState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayFoldState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public getDisplaySelfieState()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->getCurrentState()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/display/device/FoldState;->mDeviceStateCallback:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "android.hardware.devicestate.DeviceStateManager$DeviceStateCallback"

    .line 3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, p1

    new-instance v3, Lcom/android/camera/display/device/FoldState$DeviceStateCallbackHandler;

    invoke-direct {v3}, Lcom/android/camera/display/device/FoldState$DeviceStateCallbackHandler;-><init>()V

    .line 4
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/display/device/FoldState;->mDeviceStateCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/camera/display/device/FoldState;->mDeviceStateCallback:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/display/device/FoldState;->mInitialized:Z

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/display/device/FoldState;->mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;

    if-eqz p0, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->getCurrentState()I

    move-result p2

    if-nez p2, :cond_1

    move p1, v0

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;->onFolded(Z)V

    :cond_2
    return-void
.end method

.method public reverseDisplayStateWhileUnFold(Z)V
    .locals 0

    return-void
.end method

.method public switchDisplayForFlatSelfie(I)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/display/device/FoldState;->getDeviceStateRequest(II)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "android.hardware.devicestate.DeviceStateRequest$Callback"

    .line 3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Lcom/android/camera/display/device/FoldState$RequestCallbackHandler;

    invoke-direct {v2}, Lcom/android/camera/display/device/FoldState$RequestCallbackHandler;-><init>()V

    .line 4
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, LOooO0O0/OooO0O0/OooO00o/o000oOoO/OooO00o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o000oOoO/OooO00o/OooO0OO;

    invoke-static {p1, v1, v0}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->requestState(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->cancelRequest(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchPresentationDisplay(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/display/device/FoldState;->getDeviceStateRequest(II)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "android.hardware.devicestate.DeviceStateRequest$Callback"

    .line 3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Lcom/android/camera/display/device/FoldState$RequestCallbackHandler;

    invoke-direct {v2}, Lcom/android/camera/display/device/FoldState$RequestCallbackHandler;-><init>()V

    .line 4
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, LOooO0O0/OooO0O0/OooO00o/o000oOoO/OooO00o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o000oOoO/OooO00o/OooO0OO;

    invoke-static {p1, v1, v0}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->requestState(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->cancelRequest(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->cancelRequest(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/camera/display/device/FoldState;->mLastRequest:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/device/FoldState;->mDeviceStateCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/display/device/FoldState$IDeviceStateManager;->unregisterCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/display/device/FoldState;->mDeviceStateCallback:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/display/device/FoldState;->mInitialized:Z

    return-void
.end method
