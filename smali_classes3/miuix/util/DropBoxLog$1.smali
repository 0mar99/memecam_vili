.class public final Lmiuix/util/DropBoxLog$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "DropBoxLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/DropBoxLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Ljava/text/SimpleDateFormat;",
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
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/util/DropBoxLog$1;->createInstance()Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
