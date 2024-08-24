.class public Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/api/m;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/af;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/af;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->c(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/af;->a:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    return-void
.end method
