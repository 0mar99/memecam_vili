.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;->OooO00o:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
