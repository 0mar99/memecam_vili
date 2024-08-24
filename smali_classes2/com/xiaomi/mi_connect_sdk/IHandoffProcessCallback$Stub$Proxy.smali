.class public Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHandoffProcessCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.xiaomi.mi_connect_sdk.IHandoffProcessCallback"

    return-object p0
.end method
