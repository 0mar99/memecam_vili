.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/image/SuperNightCbImageImpl;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO0O0:Z

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO00o:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO0O0:Z

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoO0;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/image/SuperNightCbImageImpl;->OooO00o(ZI)V

    return-void
.end method
