.class public Lcom/android/camera/external/mivi/MIVIServiceConnector$1;
.super Ljava/lang/Object;
.source "MIVIServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/external/mivi/MIVIServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;


# direct methods
.method public constructor <init>(Lcom/android/camera/external/mivi/MIVIServiceConnector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRelevant(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    const-class p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBind success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->isRelevant(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$202(Lcom/android/camera/external/mivi/MIVIServiceConnector;Z)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->isRelevant(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string/jumbo p1, "onServiceDisconnected: %s is not relevant"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    invoke-static {p1, v1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$202(Lcom/android/camera/external/mivi/MIVIServiceConnector;Z)Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    invoke-static {p1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$300(Lcom/android/camera/external/mivi/MIVIServiceConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: retry to connect service retry-count > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    invoke-static {v1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->access$300(Lcom/android/camera/external/mivi/MIVIServiceConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;->this$0:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;->startServiceIfNeed(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
