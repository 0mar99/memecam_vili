.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/OoooOOO;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
