.class public Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/FocusManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isInVideoCategory()Z

    move-result p0

    if-nez p0, :cond_5

    .line 3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "AF timeout (threshold is %d ms)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 4
    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->create(I)Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->reShowFaceRect()V

    .line 8
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_4

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus(Z)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus()V

    :cond_5
    :goto_0
    return-void
.end method
