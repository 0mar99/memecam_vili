.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;->OooO00o:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;->OooO00o:Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;->OooO0O0:I

    check-cast p1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->OooO00o(ILcom/android/camera/protocol/protocols/PanoramaProtocol;)V

    return-void
.end method
