.class public Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.super Lcom/xiaomi/camera/util/StateMachine;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;,
        Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$NetworkEventDispatcher;
    }
.end annotation


# static fields
.field public static final CMD_ACCEPT_CONNECTION:I = 0x105

.field public static final CMD_REJECT_CONNECTION:I = 0x106

.field public static final CMD_SEND_PAYLOAD:I = 0x104

.field public static final CMD_START_ADVERTISING:I = 0x101

.field public static final CMD_START_CONNECTING:I = 0x102

.field public static final CMD_START_DISCONNECTING:I = 0x103

.field public static final CMD_START_DISCOVERING:I = 0x100

.field public static final CMD_START_SERVICE:I = 0xbabe

.field public static final CMD_STOP_SERVICE:I = 0xdead

.field public static final EVT_ADVERTISING_FAILURE:I = 0x300

.field public static final EVT_ADVERTISING_SUCCESS:I = 0x301

.field public static final EVT_CONNECTION_COMPLETED:I = 0x502

.field public static final EVT_CONNECTION_FAILURE:I = 0x500

.field public static final EVT_CONNECTION_INITIATED:I = 0x501

.field public static final EVT_CONNECTION_LOST:I = 0x503

.field public static final EVT_DISCOVERY_FAILURE:I = 0x200

.field public static final EVT_DISCOVERY_SUCCESS:I = 0x201

.field public static final EVT_ENDPOINT_FOUND:I = 0x400

.field public static final EVT_ENDPOINT_LOST:I = 0x401

.field public static final EVT_SERVICE_BOUND:I = 0x600

.field public static final EVT_SERVICE_ERROR:I = 0x602

.field public static final EVT_SERVICE_UNBOUND:I = 0x601

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdvertisingData:Ljava/lang/String;

.field public final mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

.field public mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

.field public final mAppId:I

.field public final mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

.field public final mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

.field public final mCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

.field public final mCommDataType:I

.field public final mCommType:I

.field public final mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

.field public final mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

.field public final mContext:Landroid/content/Context;

.field public final mDiscType:I

.field public final mDiscoveringState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

.field public final mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

.field public mIsStateMachineWorking:Z

.field public final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mRoleType:I

.field public final mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    .line 5
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    .line 6
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

    .line 7
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    .line 8
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    .line 9
    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    const-string v0, "VideoCast"

    .line 11
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mIsStateMachineWorking:Z

    .line 13
    iput p2, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAppId:I

    .line 14
    iput p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mRoleType:I

    .line 15
    iput p4, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscType:I

    const/16 p2, 0x8

    .line 16
    iput p2, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommType:I

    if-ne p5, p2, :cond_0

    const/4 p2, 0x4

    .line 17
    iput p2, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommDataType:I

    goto :goto_0

    .line 18
    :cond_0
    iput v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommDataType:I

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$NetworkEventDispatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$NetworkEventDispatcher;-><init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;)V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    .line 21
    iget p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mRoleType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 22
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;)V

    .line 23
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 24
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 25
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 26
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 27
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;)V

    .line 29
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 30
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 31
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 32
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 33
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 34
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 35
    :goto_1
    invoke-virtual {p0, p2}, Lcom/xiaomi/camera/util/StateMachine;->setDbg(Z)V

    const/16 p1, 0x64

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->setLogRecSize(I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method private acceptConnection(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string p1, "acceptConnection: not started yet"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointTrusted(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    .line 8
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->acceptConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

    .line 9
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mRoleType:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingCompletedState;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->startAdvertising()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->startDiscovery()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$DiscoveringState;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mIsStateMachineWorking:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopDiscovery()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->disconnectFromEndpoint(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->requestConnection(I)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->acceptConnection(I)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->rejectConnection(I)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->sendPayload(I[B)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->startService()V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopService()V

    return-void
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    return-object p0
.end method

.method private disconnectFromEndpoint(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectFromEndpoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string p1, "disconnectFromEndpoint: not started yet"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->disconnectFromEndPoint(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

    .line 8
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private rejectConnection(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string p1, "rejectConnection: not started yet"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->rejectConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

    .line 8
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestConnection(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string p1, "requestConnection: not started yet"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->requestConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

    .line 8
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendPayload(I[B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPayload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string p1, "sendPayload: not started yet"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setEndPointId(I)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setPayload([B)V

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setRoleType(I)V

    .line 8
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->sendPayload(Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;)V

    return-void
.end method

.method private startAdvertising()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "startAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startAdvertising: not started yet"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;-><init>()V

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscType:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommType:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommDataType:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commDataType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingData:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->advData([B)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->build()Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    .line 11
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startAdvertising: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDiscovery()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "startDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startDiscovery: not started yet"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;-><init>()V

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mDiscType:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommType:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCommDataType:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commDataType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->build()Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    .line 10
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startDiscovery: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startService()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "startService: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startService: already started"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    iget v2, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAppId:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/MiConnect;->newApp(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    .line 5
    check-cast v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMBinderBase;->init()V

    .line 6
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "startService: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopDiscovery()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "stopDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopDiscovery: not started yet"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->stopDiscovery()V

    .line 5
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopDiscovery: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopService()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "stopService: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopService: not started yet"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiConnect;->delApp(Lcom/xiaomi/mi_connect_sdk/api/MiApp;I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    .line 6
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopService: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    if-ne v2, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

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

.method public getAppId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAppId:I

    return p0
.end method

.method public getRoleType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mRoleType:I

    return p0
.end method

.method public getWhatToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_7

    const/16 v0, 0x201

    if-eq p1, v0, :cond_6

    const/16 v0, 0x300

    if-eq p1, v0, :cond_5

    const/16 v0, 0x301

    if-eq p1, v0, :cond_4

    const/16 v0, 0x400

    if-eq p1, v0, :cond_3

    const/16 v0, 0x401

    if-eq p1, v0, :cond_2

    const v0, 0xbabe

    if-eq p1, v0, :cond_1

    const v0, 0xdead

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "<service error>"

    return-object p0

    :pswitch_1
    const-string p0, "<service unbound>"

    return-object p0

    :pswitch_2
    const-string p0, "<service bound>"

    return-object p0

    :pswitch_3
    const-string p0, "<connection lost>"

    return-object p0

    :pswitch_4
    const-string p0, "<connection completed>"

    return-object p0

    :pswitch_5
    const-string p0, "<connection initiated>"

    return-object p0

    :pswitch_6
    const-string p0, "<connection failure>"

    return-object p0

    :pswitch_7
    const-string p0, "<reject connection>"

    return-object p0

    :pswitch_8
    const-string p0, "<accept connection>"

    return-object p0

    :pswitch_9
    const-string p0, "<send payload>"

    return-object p0

    :pswitch_a
    const-string p0, "<start disconnecting>"

    return-object p0

    :pswitch_b
    const-string p0, "<start connecting>"

    return-object p0

    :pswitch_c
    const-string p0, "<start advertising>"

    return-object p0

    :pswitch_d
    const-string p0, "<start discovery>"

    return-object p0

    :cond_0
    const-string p0, "<stop service>"

    return-object p0

    :cond_1
    const-string p0, "<start service>"

    return-object p0

    :cond_2
    const-string p0, "<endpoint lost>"

    return-object p0

    :cond_3
    const-string p0, "<endpoint found>"

    return-object p0

    :cond_4
    const-string p0, "<advertising success>"

    return-object p0

    :cond_5
    const-string p0, "<advertising failure>"

    return-object p0

    :cond_6
    const-string p0, "<discovery success>"

    return-object p0

    :cond_7
    const-string p0, "<discovery failure>"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x500
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x600
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onQuitting()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "onQuitting: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->onQuitting()V

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "onQuitting: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mListeners:Ljava/util/LinkedList;

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

.method public setAdvertisingData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mAdvertisingData:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "start: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mIsStateMachineWorking:Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mStandbyState:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->setInitialState(Lcom/xiaomi/camera/util/State;)V

    .line 4
    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->start()V

    .line 5
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "start: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "stop: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mIsStateMachineWorking:Z

    const v0, 0xdead

    .line 3
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    .line 4
    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->quit()V

    .line 5
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "stop: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopAdvertising()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopAdvertising: not started yet"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->stopAdvertising()V

    .line 5
    sget-object p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->TAG:Ljava/lang/String;

    const-string v0, "stopAdvertising: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
