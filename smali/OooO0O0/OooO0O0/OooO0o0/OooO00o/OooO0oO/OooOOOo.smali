.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoderV2;->OooO00o(Lcom/android/camera/protocol/protocols/TopAlert;)V

    return-void
.end method
