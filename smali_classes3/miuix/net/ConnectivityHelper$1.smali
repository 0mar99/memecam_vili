.class public final Lmiuix/net/ConnectivityHelper$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "ConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/net/ConnectivityHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/net/ConnectivityHelper$1;->createInstance(Ljava/lang/Object;)Lmiuix/net/ConnectivityHelper;

    move-result-object p0

    return-object p0
.end method

.method public createInstance(Ljava/lang/Object;)Lmiuix/net/ConnectivityHelper;
    .locals 1

    .line 2
    new-instance p0, Lmiuix/net/ConnectivityHelper;

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/net/ConnectivityHelper;-><init>(Landroid/content/Context;Lmiuix/net/ConnectivityHelper$1;)V

    return-object p0
.end method
