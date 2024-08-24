.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/zxing/decoders/DocumentDecoder;->OooO00o(Landroid/util/Pair;)V

    return-void
.end method
