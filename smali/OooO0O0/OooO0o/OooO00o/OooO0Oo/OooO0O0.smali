.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;-><init>()V

    sput-object v0, LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0Oo/OooO0O0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->OooO0OO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
