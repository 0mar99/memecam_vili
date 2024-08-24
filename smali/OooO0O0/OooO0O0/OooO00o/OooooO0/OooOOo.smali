.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/ModeChangeController;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ModeChangeController;->modeChanging()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
