.class public Lcom/xiaomi/onetrack/api/as$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/as;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/as;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/as$b;->a:Lcom/xiaomi/onetrack/api/as;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/as$b;->a:Lcom/xiaomi/onetrack/api/as;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/as;->h(Lcom/xiaomi/onetrack/api/as;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/as$b;->a:Lcom/xiaomi/onetrack/api/as;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/as;->i(Lcom/xiaomi/onetrack/api/as;)V

    :cond_1
    :goto_0
    return-void
.end method
