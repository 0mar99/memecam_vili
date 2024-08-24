.class public Lcom/android/camera/timerburst/TimerBurstManager$1;
.super Ljava/lang/Object;
.source "TimerBurstManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstManager$1;->this$0:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "TimerBurstManager"

    const-string/jumbo v0, "run: hide delay number in main thread"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideDelayNumber()V

    :cond_0
    return-void
.end method
