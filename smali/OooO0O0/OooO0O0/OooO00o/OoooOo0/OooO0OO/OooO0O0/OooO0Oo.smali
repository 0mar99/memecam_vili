.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0Oo;->OooO00o:Z

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0Oo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0Oo;->OooO00o:Z

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0Oo;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {v0, p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModule;->OooO0O0(ZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
