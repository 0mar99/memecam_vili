.class public Lcom/android/camera/module/impl/component/BackStackImpl;
.super Ljava/lang/Object;
.source "BackStackImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/BackStack;


# static fields
.field public static final TAG:Ljava/lang/String; = "BackStack"


# instance fields
.field public mStacks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/BackStackImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/BackStackImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private final handleBackStack(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 3
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 4
    instance-of v4, v3, Lcom/android/camera/protocol/protocols/HandleBackTrace;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    check-cast v3, Lcom/android/camera/protocol/protocols/HandleBackTrace;

    .line 6
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/HandleBackTrace;->canProvide()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v3, p1}, Lcom/android/camera/protocol/protocols/HandleBackTrace;->onBackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consume global backEvent "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackStack"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private refreshBackStack(Ljava/util/Stack;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 3
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    .line 4
    instance-of v2, v1, Lcom/android/camera/protocol/protocols/HandleBackTrace;

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    check-cast v1, Lcom/android/camera/protocol/protocols/HandleBackTrace;

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/HandleBackTrace;->canProvide()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/protocols/HandleBackTrace;->onBackEvent(I)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addInBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleBackStackFromKeyBack()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p0

    return p0
.end method

.method public handleBackStackFromShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/BackStackImpl;->refreshBackStack(Ljava/util/Stack;I)V

    return-void
.end method

.method public handleBackStackFromTapDown(II)Z
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p0

    return p0
.end method

.method public handleBackStackFromTimerBurstShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/BackStackImpl;->refreshBackStack(Ljava/util/Stack;I)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public removeBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
