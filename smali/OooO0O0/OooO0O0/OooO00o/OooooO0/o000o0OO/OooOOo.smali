.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOo;->OooO00o:I

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOo;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOo;->OooO00o:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooOOo;->OooO0O0:I

    check-cast p1, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->OooO00o(IILcom/android/camera/protocol/protocols/BackStack;)V

    return-void
.end method
