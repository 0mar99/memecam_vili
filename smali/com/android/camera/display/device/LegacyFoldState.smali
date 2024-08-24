.class public Lcom/android/camera/display/device/LegacyFoldState;
.super Ljava/lang/Object;
.source "LegacyFoldState.java"

# interfaces
.implements Lcom/android/camera/display/device/IFoldState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/display/device/LegacyFoldState$DisplayFoldListenerHandler;
    }
.end annotation


# static fields
.field public static final FOLD_LISTENER_STUB:Ljava/lang/String; = "android.view.IDisplayFoldListener"

.field public static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static SUB_SCREEN_DISPLAY_NUM:I = 0x1

.field public static TAG:Ljava/lang/String; = "LegacyFoldState"


# instance fields
.field public mFoldListenerStub:Ljava/lang/Object;

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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDisplayFoldState()Z
    .locals 1

    const-string p0, "miui_multi_display"

    .line 1
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->getCurrentFoldState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentFoldState fail!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string v0, "multi display manager service no found! "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplaySelfieState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
    .locals 5

    const-string p1, "android.view.IDisplayFoldListener"

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    new-instance p2, Lcom/android/camera/display/device/LegacyFoldState$DisplayFoldListenerHandler;

    invoke-direct {p2, p0}, Lcom/android/camera/display/device/LegacyFoldState$DisplayFoldListenerHandler;-><init>(Lcom/android/camera/display/device/LegacyFoldState;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mFoldListenerStub:Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, v0}, Lcom/android/camera/display/device/LegacyFoldState$DisplayFoldListenerHandler;->setOwner(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string/jumbo v0, "registerDisplayFoldListener"

    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mFoldListenerStub:Ljava/lang/Object;

    aput-object p0, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayFoldChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p2}, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;->onFolded(Z)V

    :cond_0
    return-void
.end method

.method public reverseDisplayStateWhileUnFold(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E: reverseDisplayStateWhileUnFold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "miui_multi_display"

    .line 2
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->reverseDisplayStateWhileUnFold(ZI)Z

    .line 5
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "X: reverseDisplayStateWhileUnFold Success!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reverseDisplayStateWhileUnFold fail!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "multi display manager service no found! "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public switchDisplayForFlatSelfie(I)V
    .locals 0

    return-void
.end method

.method public switchPresentationDisplay(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E: switchPresentationDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "miui_multi_display"

    .line 2
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    .line 4
    :try_start_0
    sget v0, Lcom/android/camera/display/device/LegacyFoldState;->SUB_SCREEN_DISPLAY_NUM:I

    invoke-interface {p0, v0, p1}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    .line 5
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "X: SubDisplay, sub display sucess!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "display manager service connect fail!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "multi display manager service no found! "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "unregisterDisplayFoldListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "android.view.IDisplayFoldListener"

    .line 4
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mFoldListenerStub:Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
