.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->onFaceBeautyAnimatorStart()V

    return-void
.end method
