.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->OooO00o(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
