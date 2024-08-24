.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OOO/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OOO/OooOOO;->OooO00o:I

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OOO/OooOOO;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OOO/OooOOO;->OooO00o:I

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OOO/OooOOO;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(ILandroid/graphics/Rect;Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;)V

    return-void
.end method
