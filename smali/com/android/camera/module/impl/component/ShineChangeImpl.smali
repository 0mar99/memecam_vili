.class public Lcom/android/camera/module/impl/component/ShineChangeImpl;
.super Ljava/lang/Object;
.source "ShineChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;


# static fields
.field public static final BEAUTY_ADJUST_TRIGGER:I = 0x2

.field public static final BEAUTY_SHINE_TRIGGER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ShineChangeImpl"


# instance fields
.field public final mActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ShineChangeImpl;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 6
    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic OooO00o(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->isNormalTagShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd4

    aput v2, v0, v1

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ShineChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/ShineChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ShineChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ShineChangeImpl;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    return-object p0
.end method

.method public static preload()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ShineChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preload"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateShineUi(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ShineChangeImpl;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onShineChanged(ZI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->getBaseModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopFilterEntry()Z

    move-result v3

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportPopUpEntry()Z

    move-result v4

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentStatus()Z

    move-result v3

    .line 7
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v1

    if-eq v3, v1, :cond_2

    .line 8
    sget-object v2, Lcom/android/camera/module/impl/component/ShineChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beauty status changed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0oo;

    invoke-direct {v1, v4}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0oo;-><init>(Z)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->updateShineUi(Ljava/lang/Runnable;)V

    :cond_2
    if-nez p1, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/IUserEventMgr;->onShineChanged(I)V

    :cond_3
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
