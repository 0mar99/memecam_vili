.class public Lcom/xiaomi/onetrack/api/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/xiaomi/onetrack/api/an;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/an;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->b:Lcom/xiaomi/onetrack/api/an;

    iput p2, p0, Lcom/xiaomi/onetrack/api/ao;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p0, p0, Lcom/xiaomi/onetrack/api/ao;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_1
    return-void
.end method
