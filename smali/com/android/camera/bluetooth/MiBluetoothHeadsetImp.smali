.class public Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;
.super Landroid/content/BroadcastReceiver;
.source "MiBluetoothHeadsetImp.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

.field public mConnectStateRef:Ljava/lang/ref/WeakReference;
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
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;

    invoke-interface {p1, p0}, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;->onBluetoothHeadsetStateChanged(I)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;

    invoke-direct {v0, p0}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private onBluetoothHeadsetStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooO0O/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooO0O/OooO0O0;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooO0O/OooO00o;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooO0O/OooO00o;-><init>(I)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string p1, "Bluetooth is not supported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string p1, "Bluetooth is not supported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isBluetoothScoOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBluetooth()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBluetoothSco(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->impl2()Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.bluetooth.profile.extra.STATE"

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->onBluetoothHeadsetStateChanged(I)V

    goto :goto_0

    :cond_1
    const-string p0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xa

    .line 8
    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p0, :cond_4

    const/16 p0, 0xc

    if-eq p2, p0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/SoundSetting;->isSupportHeadset(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 12
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->stopBluetoothSco(I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->startBluetoothSco(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->registerBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public startBluetoothSco(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 2
    iget-object v1, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->startBluetoothSco(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackIntoBluetoothSco()V

    :cond_3
    return-void
.end method

.method public stopBluetoothSco(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->stopBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method
