.class public Lcom/android/camera/BatteryDetector;
.super Ljava/lang/Object;
.source "BatteryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BatteryDetector$InstanceHolder;,
        Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;
    }
.end annotation


# static fields
.field public static final BATTERY_OVER:I = 0x0

.field public static final BATTERY_PERCENT_CUTOFF:I = 0x5

.field public static final BATTERY_PERCENT_RECORD_ALERT:I = 0x2

.field public static final CLOSE_VIDEO_LOW_BATTERY_SEC:I = 0xa

.field public static final IS_LOWBATTERY_CUTOFF:Z

.field public static final MASK_BATTERY_BAN_FLASH:I = 0x1

.field public static final MASK_BATTERY_RECORD_ALERT:I = 0x4

.field public static final MASK_BATTERY_RESET:I = 0x0

.field public static final PERSIST_LOWBATTERY_CUTOFF:Ljava/lang/String; = "persist.vendor.low.cutoff"

.field public static final TAG:Ljava/lang/String; = "BatteryDetector"


# instance fields
.field public mBatteryLevel:I

.field public mContext:Landroid/content/Context;

.field public mFilter:Landroid/content/IntentFilter;

.field public mListener:Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.vendor.low.cutoff"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/BatteryDetector;->IS_LOWBATTERY_CUTOFF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/BatteryDetector;->mFilter:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/android/camera/BatteryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BatteryDetector$1;-><init>(Lcom/android/camera/BatteryDetector;)V

    iput-object v0, p0, Lcom/android/camera/BatteryDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/BatteryDetector$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/BatteryDetector;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/BatteryDetector;)Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/BatteryDetector;->mListener:Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$402(Lcom/android/camera/BatteryDetector;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/BatteryDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/BatteryDetector;->onBatteryNotification(I)V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/BatteryDetector;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/BatteryDetector$InstanceHolder;->access$100()Lcom/android/camera/BatteryDetector;

    move-result-object v0

    return-object v0
.end method

.method private onBatteryNotification(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatteryNotification action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/BatteryDetector;->mListener:Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;->onLowBatteryNotification(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public batteryCloseFlash()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/android/camera/BatteryDetector;->IS_LOWBATTERY_CUTOFF:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    return p0
.end method

.method public onBatteryNotificationIfNeed()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    sget-boolean v1, Lcom/android/camera/BatteryDetector;->IS_LOWBATTERY_CUTOFF:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    iget v1, p0, Lcom/android/camera/BatteryDetector;->mBatteryLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 4
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/BatteryDetector;->onBatteryNotification(I)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/BatteryDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public registerReceiver(Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/BatteryDetector;->mListener:Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

    .line 3
    iget-object p1, p0, Lcom/android/camera/BatteryDetector;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BatteryDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/camera/BatteryDetector;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/BatteryDetector;->mListener:Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

    .line 3
    iget-object v0, p0, Lcom/android/camera/BatteryDetector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/BatteryDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
