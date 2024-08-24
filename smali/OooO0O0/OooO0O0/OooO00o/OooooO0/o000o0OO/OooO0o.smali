.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/graphics/Point;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Point;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO00o:Landroid/graphics/Point;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0OO:I

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO00o:Landroid/graphics/Point;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0O0:I

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0OO:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;->OooO0Oo:I

    check-cast p1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->OooO00o(Landroid/graphics/Point;IIILcom/android/camera/protocol/protocols/PanoramaProtocol;)V

    return-void
.end method
