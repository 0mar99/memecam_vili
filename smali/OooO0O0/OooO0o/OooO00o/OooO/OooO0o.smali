.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO/OooO0o;->OooO00o:Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;

    iput p2, p0, LOooO0O0/OooO0o/OooO00o/OooO/OooO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO/OooO0o;->OooO00o:Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;

    iget p0, p0, LOooO0O0/OooO0o/OooO00o/OooO/OooO0o;->OooO0O0:I

    invoke-static {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastService$3;->OooO00o(Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;I)V

    return-void
.end method
