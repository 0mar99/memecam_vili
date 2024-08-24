.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    check-cast p2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->compare(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/render/CameraItemInterface;)I

    move-result p0

    return p0
.end method
