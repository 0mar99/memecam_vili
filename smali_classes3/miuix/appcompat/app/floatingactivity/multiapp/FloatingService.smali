.class public Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;
.super Landroid/app/Service;
.source "FloatingService.java"


# instance fields
.field public mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

.field public mNotifyIdentity:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mServiceNotify:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getPageCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findPreviousIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->checkFinishing(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->notifyPreviousSlide(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->onMethodCall(I)V

    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Ljava/util/LinkedList;

    return-object p0
.end method

.method private checkFinishing(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findNextIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "check_finishing"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v1
.end method

.method private findNextIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private findPreviousIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getPageCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    return p0
.end method

.method private notifyPreviousSlide(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findPreviousIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private onMethodCall(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
