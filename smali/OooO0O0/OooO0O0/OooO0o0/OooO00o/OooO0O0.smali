.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/util/Pair;

    check-cast p1, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    invoke-static {p0, p1}, Lcom/android/zxing/decoders/DocumentDecoder;->OooO00o(Landroid/util/Pair;Lcom/android/camera/protocol/protocols/DocViewProtocol;)V

    return-void
.end method
