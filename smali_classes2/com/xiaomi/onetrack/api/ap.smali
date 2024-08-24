.class public Lcom/xiaomi/onetrack/api/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/as$a;
.implements Lcom/xiaomi/onetrack/api/j;


# static fields
.field public static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field public static final b:I = 0x19000

.field public static final c:I = 0x7d000

.field public static final d:I = 0x2


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/xiaomi/onetrack/Configuration;

.field public g:Lcom/xiaomi/onetrack/api/as;

.field public h:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ap;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ap;->h:Lcom/xiaomi/onetrack/util/v;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/api/as;->a()Lcom/xiaomi/onetrack/api/as;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ap;->g:Lcom/xiaomi/onetrack/api/as;

    .line 6
    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/as;->a(Lcom/xiaomi/onetrack/api/as$a;)V

    .line 7
    new-instance p1, Lcom/xiaomi/onetrack/api/aq;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/api/aq;-><init>(Lcom/xiaomi/onetrack/api/ap;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/ap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ap;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "H"

    .line 28
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "OneTrackSystemImp"

    const-string v0, ""

    .line 30
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 18
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "onetrack_bug_report"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    return p0

    :cond_2
    const-string p1, "OneTrackSystemImp"

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const p3, 0x7d000

    if-le p2, p3, :cond_4

    const-string p0, "ad Event size exceed limitation!"

    .line 21
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    if-eqz p2, :cond_4

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    const p3, 0x19000

    if-le p2, p3, :cond_4

    const-string p0, "Event size exceed limitation!"

    .line 23
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    return p0
.end method

.method private b()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackCachedEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackSystemImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaomi/onetrack/api/ar;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ar;-><init>(Lcom/xiaomi/onetrack/api/ap;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ap;->g:Lcom/xiaomi/onetrack/api/as;

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/as;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/api/ap;->a(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ap;->h:Lcom/xiaomi/onetrack/util/v;

    const-string v2, "OneTrackSystemImp"

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 4
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/onetrack/api/ap;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onetrack_cta_status"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    .line 10
    :cond_3
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ap;->g:Lcom/xiaomi/onetrack/api/as;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 14
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ap;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lcom/xiaomi/onetrack/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p0, :cond_6

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "track mIOneTrackService is null! SystemImpCacheManager cache data:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method
