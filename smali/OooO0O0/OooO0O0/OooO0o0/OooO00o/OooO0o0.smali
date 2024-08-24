.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/zxing/decoders/HandGestureDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/decoders/HandGestureDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Lcom/android/zxing/decoders/HandGestureDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Lcom/android/zxing/decoders/HandGestureDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/decoders/HandGestureDecoder;->OooO00o(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
