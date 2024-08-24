.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final synthetic OooO00o:Lio/reactivex/CompletableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o;->OooO00o:Lio/reactivex/CompletableEmitter;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o;->OooO00o:Lio/reactivex/CompletableEmitter;

    invoke-static {p0, p1, p2}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->OooO00o(Lio/reactivex/CompletableEmitter;J)V

    return-void
.end method
