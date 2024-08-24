.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:F

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;->OooO00o:F

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;->OooO00o:F

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;->OooO0O0:I

    check-cast p1, Lcom/android/camera/protocol/protocols/ZoomProtocol;

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->OooO00o(FILcom/android/camera/protocol/protocols/ZoomProtocol;)V

    return-void
.end method
