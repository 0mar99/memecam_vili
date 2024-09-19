.class public Lcom/xiaomi/camera/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;,
        Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;,
        Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field public static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field public mDbg:Z

.field public mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mDestState:Lcom/xiaomi/camera/util/State;

.field public mHaltingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

.field public mHasQuit:Z

.field public mInitialState:Lcom/xiaomi/camera/util/State;

.field public mIsConstructionCompleted:Z

.field public mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

.field public mMsg:Landroid/os/Message;

.field public mQuittingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

.field public mSm:Lcom/xiaomi/camera/util/StateMachine;

.field public mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/camera/util/State;",
            "Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

.field public mStateStackTopIndex:I

.field public mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

.field public mTempStateStackCount:I

.field public mTransitionInProgress:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/xiaomi/camera/util/StateMachine;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHasQuit:Z

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    .line 5
    new-instance v0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;-><init>(Lcom/xiaomi/camera/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 7
    new-instance v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHaltingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    .line 8
    new-instance v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mQuittingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 10
    iput-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 12
    iput-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    .line 13
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHaltingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 14
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mQuittingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Lcom/xiaomi/camera/util/StateMachine;Lcom/xiaomi/camera/util/StateMachine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/camera/util/StateMachine;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->removeState(Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->setInitialState(Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/IState;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->getCurrentState()Lcom/xiaomi/camera/util/IState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/IState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHaltingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2000(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->isDbg()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method private final addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_3

    .line 6
    invoke-direct {p0, p2, v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 7
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-nez p2, :cond_4

    .line 8
    new-instance p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4
    iget-object v0, p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "state already added"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_6
    :goto_2
    iput-object p1, p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    .line 13
    iput-object v1, p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 15
    iget-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addStateInternal: X stateInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine;->access$400(Lcom/xiaomi/camera/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->access$402(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->access$502(Lcom/xiaomi/camera/util/StateMachine;Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    .line 5
    iput-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->cleanup()V

    .line 7
    iput-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 8
    iput-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iput-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mInitialState:Lcom/xiaomi/camera/util/State;

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v3, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 5
    :cond_4
    new-array v0, v2, [Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 6
    new-array v0, v2, [Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v0, -0x2

    .line 8
    sget-object v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 9
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const-string v0, "completeConstruction: X"

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentState()Lcom/xiaomi/camera/util/IState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    return-object p0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4

    move v0, p1

    .line 1
    :goto_0
    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    if-ne p1, v1, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v3}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v1}, Lcom/xiaomi/camera/util/State;->enter()V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    return-void
.end method

.method private final invokeExitMethods(Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;)V
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 2
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    .line 3
    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/util/State;->exit()V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 3
    iget-boolean v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-boolean v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 6
    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object p0, v3, p0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v1, p0}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/xiaomi/camera/util/State;Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    invoke-virtual {v1}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->add(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mLogRecords:Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->add(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    if-eqz p1, :cond_5

    .line 8
    :goto_2
    iget-boolean p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 10
    iput-boolean v8, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 11
    invoke-direct {p0, p2}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;)V

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 13
    invoke-direct {p0, p2}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 15
    iget-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    if-eq p1, p2, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    :cond_5
    if-eqz p1, :cond_7

    .line 17
    iget-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mQuittingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_6

    .line 18
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/util/StateMachine;->onQuitting()V

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    .line 20
    :cond_6
    iget-object p2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHaltingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_7

    .line 21
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->onHalting()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/xiaomi/camera/util/State;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v4}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mQuittingState:Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v0, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz v1, :cond_1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v4}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 12
    iget-object p0, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private final quit()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    sget-object v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final quitNow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    sget-object v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private removeState(Lcom/xiaomi/camera/util/State;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0o/OooO00o/OooO0oo/OooO00o;

    invoke-direct {v2, v0}, LOooO0O0/OooO0o/OooO00o/OooO0oo/OooO00o;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    return-void
.end method

.method private final setInitialState(Lcom/xiaomi/camera/util/State;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mInitialState:Lcom/xiaomi/camera/util/State;

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mInitialState:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v2}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mInitialState:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 6
    iget-object v0, v0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 4
    iget-object p1, p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_1

    .line 5
    iget-boolean v0, p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",curStateInfo: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final transitionTo(Lcom/xiaomi/camera/util/IState;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine;->access$700(Lcom/xiaomi/camera/util/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    check-cast p1, Lcom/xiaomi/camera/util/State;

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    .line 4
    iget-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDestState:Lcom/xiaomi/camera/util/State;

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/util/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/xiaomi/camera/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iget-boolean v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne v3, v2, :cond_3

    .line 6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v3, 0x0

    .line 8
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_1

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/xiaomi/camera/util/State;

    move-result-object v0

    .line 11
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->performTransitions(Lcom/xiaomi/camera/util/State;Landroid/os/Message;)V

    .line 12
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz v0, :cond_5

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->mSm:Lcom/xiaomi/camera/util/StateMachine;

    if-eqz p0, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_6

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    :cond_6
    return-void
.end method
