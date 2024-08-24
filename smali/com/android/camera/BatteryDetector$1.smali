.class public Lcom/android/camera/BatteryDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BatteryDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/BatteryDetector;


# direct methods
.method public constructor <init>(Lcom/android/camera/BatteryDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/BatteryDetector$1;->this$0:Lcom/android/camera/BatteryDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_5

    .line 1
    iget-object p1, p0, Lcom/android/camera/BatteryDetector$1;->this$0:Lcom/android/camera/BatteryDetector;

    invoke-static {p1}, Lcom/android/camera/BatteryDetector;->access$200(Lcom/android/camera/BatteryDetector;)Lcom/android/camera/BatteryDetector$OnLowBatteryNotificationListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const-string v0, "level"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    const-string/jumbo v2, "scale"

    .line 4
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float v1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 5
    sget-object v1, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    if-gez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/BatteryDetector;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive battery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cutoff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/camera/BatteryDetector;->IS_LOWBATTERY_CUTOFF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/BatteryDetector$1;->this$0:Lcom/android/camera/BatteryDetector;

    invoke-static {v0, p2}, Lcom/android/camera/BatteryDetector;->access$402(Lcom/android/camera/BatteryDetector;I)I

    const/4 v0, 0x5

    if-gt p2, v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/android/camera/BatteryDetector;->IS_LOWBATTERY_CUTOFF:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    :cond_3
    const/4 v0, 0x2

    if-gt p2, v0, :cond_4

    or-int/lit8 p1, p1, 0x4

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/android/camera/BatteryDetector$1;->this$0:Lcom/android/camera/BatteryDetector;

    invoke-static {p0, p1}, Lcom/android/camera/BatteryDetector;->access$500(Lcom/android/camera/BatteryDetector;I)V

    :cond_5
    :goto_0
    return-void
.end method
