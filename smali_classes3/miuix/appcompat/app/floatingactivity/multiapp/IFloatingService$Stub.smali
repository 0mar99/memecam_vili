.class public abstract Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;
.super Landroid/os/Binder;
.source "IFloatingService.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

.field public static final TRANSACTION_callServiceMethod:I = 0x2

.field public static final TRANSACTION_registerServiceNotify:I = 0x3

.field public static final TRANSACTION_unregisterServiceNotify:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;->asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 7
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;->asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I

    move-result p0

    .line 9
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
