.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o00oO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:Lcom/android/camera/protocol/protocols/DollyZoomProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;Lcom/android/camera/protocol/protocols/DollyZoomProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o00oO0o;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o00oO0o;->OooO0O0:Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o00oO0o;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o00oO0o;->OooO0O0:Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/DollyZoomModule;->OooO0O0(Lcom/android/camera/protocol/protocols/DollyZoomProcess;)V

    return-void
.end method
