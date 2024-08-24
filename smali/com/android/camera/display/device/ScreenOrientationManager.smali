.class public Lcom/android/camera/display/device/ScreenOrientationManager;
.super Ljava/lang/Object;
.source "ScreenOrientationManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenOrientationManager"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mSupportLandscape:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method private checkSupportLandscape()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public enableRequestedOrientation(Landroid/app/Activity;Z)V
    .locals 6

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o000()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRequestedOrientation + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p2, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setOrientationOptions"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    sget-object p0, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableRequestedOrientation - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/display/device/ScreenOrientationManager;->checkSupportLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mSupportLandscape:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5
    sget-object p1, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p1, v0, 0x80

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mSupportLandscape:Z

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1, v3}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    .line 11
    new-instance p1, Lcom/android/camera/module/loader/FunctionUISetup;

    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-direct {p1, v0, v2}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(IZ)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/module/loader/WeakNullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p0

    .line 13
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/display/device/ScreenOrientationManager;->checkSupportLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mSupportLandscape:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mSupportLandscape:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 3
    iput-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget-object p0, Lcom/android/camera/display/device/ScreenOrientationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/display/device/ScreenOrientationManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/display/device/ScreenOrientationManager;->enableRequestedOrientation(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method
