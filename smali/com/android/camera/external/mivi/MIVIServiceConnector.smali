.class public Lcom/android/camera/external/mivi/MIVIServiceConnector;
.super Ljava/lang/Object;
.source "MIVIServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/external/mivi/MIVIServiceConnector$Holder;
    }
.end annotation


# static fields
.field public static final MAX_REBIND_COUNT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MIVIServiceConnector"


# instance fields
.field public volatile mConnected:Z

.field public mRebindCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mRebindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mConnected:Z

    .line 5
    new-instance v0, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/android/camera/external/mivi/MIVIServiceConnector$1;-><init>(Lcom/android/camera/external/mivi/MIVIServiceConnector;)V

    iput-object v0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/external/mivi/MIVIServiceConnector$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/external/mivi/MIVIServiceConnector;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/android/camera/external/mivi/MIVIServiceConnector;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mConnected:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/external/mivi/MIVIServiceConnector;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mRebindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static getInstance()Lcom/android/camera/external/mivi/MIVIServiceConnector;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/external/mivi/MIVIServiceConnector$Holder;->instance:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    return-object v0
.end method


# virtual methods
.method public isConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mConnected:Z

    return p0
.end method

.method public startServiceIfNeed(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mConnected:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startServiceIfNeed: already start!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService: bind MIVIParallelService start!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/mivi/MIVIParallelService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/external/mivi/MIVIServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    const v1, 0x4000041

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
