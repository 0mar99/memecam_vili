.class public Lcom/android/camera/snap/SnapKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SnapKeyReceiver.java"


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "key_action"

.field public static final KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "key_event_time"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/snap/SnapKeyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapKeyReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooooo()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui.intent.action.CAMERA_KEY_BUTTON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->isSnapEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string/jumbo p0, "power"

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 6
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    const-string v0, "key_code"

    const/4 v1, 0x0

    if-nez p0, :cond_4

    const/16 p0, 0x1a

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne p0, v2, :cond_5

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    .line 8
    invoke-static {p0}, Lcom/android/camera/snap/SnapService;->setScreenOn(Z)V

    return-void

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p0

    const-wide/16 v2, 0x0

    const-string v4, "key_event_time"

    const-string v5, "key_action"

    if-eqz p0, :cond_6

    .line 10
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 12
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 13
    invoke-virtual {p2, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    goto :goto_0

    .line 15
    :cond_6
    invoke-static {v1}, Lcom/android/camera/snap/SnapService;->setScreenOn(Z)V

    .line 16
    new-instance p0, Landroid/content/Intent;

    const-class v6, Lcom/android/camera/snap/SnapService;

    invoke-direct {p0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p2, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
