.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;

    invoke-direct {v0}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;-><init>()V

    sput-object v0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->OooO00o(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Z

    move-result p0

    return p0
.end method
