.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/VideoCastModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/VideoCastModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    return-void
.end method
