.class public Lcom/xiaomi/onetrack/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->init(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/CrashAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start()V

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getInstance()Lcom/xiaomi/onetrack/CrashAnalysis;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getInstance()Lcom/xiaomi/onetrack/CrashAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/m;

    new-instance v1, Lcom/xiaomi/onetrack/api/k;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/api/k;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/api/k;)Lcom/xiaomi/onetrack/api/k;

    .line 4
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/k;->a()V

    :cond_1
    return-void
.end method
