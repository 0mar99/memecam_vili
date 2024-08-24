.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->OooO00o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
