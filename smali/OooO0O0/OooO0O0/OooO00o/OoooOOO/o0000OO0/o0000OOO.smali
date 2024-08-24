.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o0000OOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o0000OOO;->OooO00o:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o0000OOO;->OooO00o:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO00o(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/RenderSource;)Z

    move-result p0

    return p0
.end method
