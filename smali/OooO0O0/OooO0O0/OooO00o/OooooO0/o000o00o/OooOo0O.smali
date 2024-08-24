.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0O;->OooO00o:Lcom/android/camera/module/Module;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0O;->OooO00o:Lcom/android/camera/module/Module;

    check-cast p1, Lcom/android/camera/protocol/protocols/FullScreenProtocol;

    invoke-static {p0, p1}, Lcom/android/camera/module/image/ScreenLightCallbackImpl;->OooO00o(Lcom/android/camera/module/Module;Lcom/android/camera/protocol/protocols/FullScreenProtocol;)V

    return-void
.end method
