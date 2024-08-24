.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0Oo;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0Oo;->OooO00o:Z

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {p0, p1}, Lcom/android/camera/module/image/ImageModuleUtil;->OooO00o(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
