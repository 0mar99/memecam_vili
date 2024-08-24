.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0Oo/OooO00o;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/features/mode/dualcam/DualCamModeUI;->OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
