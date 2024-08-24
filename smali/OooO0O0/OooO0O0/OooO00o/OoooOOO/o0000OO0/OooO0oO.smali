.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO0oO;->OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO0oO;->OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->OooO00o(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V

    return-void
.end method
