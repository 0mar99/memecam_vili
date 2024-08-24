.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Lcom/android/camera/module/Module;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/camera/module/Module;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO00o:I

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO0O0:Lcom/android/camera/module/Module;

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO00o:I

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO0O0:Lcom/android/camera/module/Module;

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;->OooO0OO:I

    check-cast p1, Lcom/android/camera/protocol/protocols/FullScreenProtocol;

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/module/image/ScreenLightCallbackImpl;->OooO00o(ILcom/android/camera/module/Module;ILcom/android/camera/protocol/protocols/FullScreenProtocol;)V

    return-void
.end method
