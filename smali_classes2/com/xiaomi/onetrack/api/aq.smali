.class public Lcom/xiaomi/onetrack/api/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/ap;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aq;->a:Lcom/xiaomi/onetrack/api/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->f()V

    :cond_0
    return-void
.end method
