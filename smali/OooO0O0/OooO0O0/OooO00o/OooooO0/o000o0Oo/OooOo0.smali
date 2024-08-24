.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/VideoCastModule;

.field private final synthetic OooO0O0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/VideoCastModule;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;->OooO0O0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;->OooO0O0:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/VideoCastModule;->OooO00o(Landroid/os/Bundle;)V

    return-void
.end method
