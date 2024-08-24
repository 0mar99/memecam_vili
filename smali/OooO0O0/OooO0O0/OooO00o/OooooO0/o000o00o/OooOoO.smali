.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/image/SuperNightCbImageImpl;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO0O0:Z

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO0O0:Z

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO;->OooO0OO:I

    check-cast p1, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/module/image/SuperNightCbImageImpl;->OooO00o(ZILcom/android/camera/protocol/protocols/BottomPopupTips;)V

    return-void
.end method
