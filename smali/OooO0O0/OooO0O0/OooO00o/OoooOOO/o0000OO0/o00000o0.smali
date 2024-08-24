.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00000o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:F

.field private final synthetic OooO0O0:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00000o0;->OooO00o:F

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00000o0;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00000o0;->OooO00o:F

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00000o0;->OooO0O0:F

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO00o(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
