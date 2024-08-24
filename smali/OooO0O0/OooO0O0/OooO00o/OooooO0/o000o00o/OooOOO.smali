.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO;->OooO00o:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO;->OooO00o:F

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {p0, p1}, Lcom/android/camera/module/image/NightManager;->OooO0O0(FLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
