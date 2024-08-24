.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)I

    move-result p0

    return p0
.end method
