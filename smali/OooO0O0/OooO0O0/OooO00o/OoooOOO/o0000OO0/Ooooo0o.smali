.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;->OooO00o:I

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;->OooO00o:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;->OooO0O0:I

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
