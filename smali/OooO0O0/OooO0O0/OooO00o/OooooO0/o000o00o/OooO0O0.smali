.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0O0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0O0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {p0, p1}, Lcom/android/camera/module/image/Camera2ModuleHandler;->OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
