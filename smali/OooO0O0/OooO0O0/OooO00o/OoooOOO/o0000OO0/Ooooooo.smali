.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooooo;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->OooO00o(Lcom/android/camera/dualvideo/render/MiscRenderItem;)V

    return-void
.end method
