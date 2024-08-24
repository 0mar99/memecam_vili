.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.super Ljava/lang/Object;
.source "StreamingServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;,
        Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;,
        Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;,
        Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;,
        Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;
    }
.end annotation


# static fields
.field public static final SERVER_NAME:Ljava/lang/String; = "XMRCSS"

.field public static final SERVER_STATE_BIND_FAILED:I = 0x1

.field public static final SERVER_STATE_BIND_SUCCEED:I = 0x2

.field public static final SERVER_STATE_START_FAILED:I = 0x1

.field public static final SESSION_STATE_STREAMING_STARTED:I = 0x2

.field public static final SESSION_STATE_STREAMING_STOPPED:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static final sAudioEncoder:I = 0x0

.field public static final sVideoEncoder:I = 0x1

.field public static final sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;


# instance fields
.field public mEnabled:Z

.field public mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

.field public final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mRestart:Z

.field public final mRpcMessageHandler:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

.field public mSessions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/majorkernelpanic/streaming/Session;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mUsername:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/16 v1, 0x1e0

    const/16 v2, 0x280

    const/16 v3, 0x1e

    const v4, 0x7a120

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    sput-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRpcMessageHandler:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b000c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050008

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    .line 8
    invoke-static {}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getInstance()Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setContext(Landroid/content/Context;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p2}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    .line 12
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    return p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getIPAddress(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRpcMessageHandler:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Ljava/io/BufferedReader;[CI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->read(Ljava/io/BufferedReader;[CI)I

    move-result p0

    return p0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz p0, :cond_3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    if-nez v3, :cond_1

    const/16 p0, 0x25

    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_4

    .line 11
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public static read(Ljava/io/BufferedReader;[CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_2

    sub-int v1, p2, v0

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr p2, v0

    return p2

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    if-ne v2, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBitrate()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->getBitrate()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getPort()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    return p0
.end method

.method public getStreamingSession()Lnet/majorkernelpanic/streaming/Session;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/majorkernelpanic/streaming/rtsp/UriParser;->parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/Session;->setOrigin(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/Session;->setDestination(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getStreamingSession()Lnet/majorkernelpanic/streaming/Session;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postStreamingServerState(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postStreamingServerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setStreamingServerPort(Landroid/os/Bundle;I)V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    .line 9
    sget-object v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, p1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;->onStreamingServerStateChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no handle for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postStreamingSessionState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iget v0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    .line 8
    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v2

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    .line 9
    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getCodecInputSurface()Landroid/view/Surface;

    move-result-object p1

    .line 10
    invoke-static {p0, v0, v2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setVideoStreamSize(Landroid/os/Bundle;II)V

    .line 11
    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setCodecInputSurface(Landroid/os/Bundle;Landroid/view/Surface;)V

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    .line 13
    sget-object v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, p2, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;->onStreamingSessionStateChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 15
    :cond_1
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no handle for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mUsername:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    return-void
.end method

.method public setPort(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->waitUtilReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->kill()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    .line 7
    throw v0

    .line 8
    :catch_0
    :cond_1
    iput-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    :cond_2
    return-void
.end method

.method public waitUtilConnectable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->waitUtilReady()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
