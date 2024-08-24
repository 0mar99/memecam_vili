.class public Lcom/xiaomi/onetrack/api/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0xa

    .line 5
    iput v0, p2, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "BroadcastManager"

    const-string p1, "netReceiver"

    .line 8
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
