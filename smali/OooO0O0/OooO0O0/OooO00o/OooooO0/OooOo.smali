.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->OooO0o0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
