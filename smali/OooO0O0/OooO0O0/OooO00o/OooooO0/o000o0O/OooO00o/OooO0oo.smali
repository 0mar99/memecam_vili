.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
